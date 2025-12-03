@interface PAAccessLogger
+ (id)sharedInstance;
+ (void)initialize;
- (BOOL)loggingEnabled;
- (PAAccessLogger)initWithConnection:(id)connection queue:(id)queue;
- (PAAccessLogger)initWithConnection:(id)connection queue:(id)queue enablementChangedNotificationName:(id)name options:(unint64_t)options;
- (PAAccessLogger)initWithConnection:(id)connection queue:(id)queue forcingOptions:(unint64_t)options error:(id *)error;
- (PAAccessLoggerDelegate)delegate;
- (ResyncStateResult)resyncState;
- (id)beginIntervalForAccess:(id)access;
- (void)dealloc;
- (void)endIntervalWithSlot:(id)slot timestampAdjustment:(double)adjustment accessCount:(int64_t)count;
- (void)ensureEnablementChangedNotificationRegistered;
- (void)handleConnectionInterrupted;
- (void)handleConnectionInvalidated;
- (void)lockedInvalidateState;
- (void)lockedNotifyDidSetLoggingEnabled:(BOOL)enabled;
- (void)log:(id)log;
- (void)log:(id)log reason:(int64_t)reason;
- (void)notifyDidCoalesceAccess:(id)access;
- (void)notifyDidLogAccess:(id)access failedWithError:(id)error;
- (void)recordAssetIdentifiers:(id)identifiers withVisibilityState:(int64_t)state accessEventCount:(unint64_t)count forSlot:(id)slot;
- (void)setLoggingEnabled:(BOOL)enabled;
- (void)withLockedState:(id)state;
@end

@implementation PAAccessLogger

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    logger_3 = os_log_create("com.apple.PrivacyAccounting", "PAAccessLogger");

    MEMORY[0x1EEE66BB8]();
  }
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[PAAccessLogger sharedInstance];
  }

  v3 = sharedInstance_instance_1;

  return v3;
}

uint64_t __32__PAAccessLogger_sharedInstance__block_invoke()
{
  sharedInstance_instance_1 = [[PAAccessLogger alloc] initWithQueue:0];

  return MEMORY[0x1EEE66BB8]();
}

- (BOOL)loggingEnabled
{
  os_unfair_lock_lock(&self->_lock);
  loggingEnabled = [(PAAccessLoggerState *)self->_state loggingEnabled];
  os_unfair_lock_unlock(&self->_lock);
  return loggingEnabled;
}

- (PAAccessLoggerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)handleConnectionInterrupted
{
  v40 = *MEMORY[0x1E69E9840];
  v3 = logger_3;
  if (os_log_type_enabled(logger_3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1DF25B000, v3, OS_LOG_TYPE_INFO, "XPC connection interrupted", buf, 2u);
  }

  *buf = 0;
  v35 = 0;
  v36 = 0;
  [(PAAccessLogger *)self resyncState];
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v4 = *buf;
  v5 = [v4 countByEnumeratingWithState:&v30 objects:v39 count:16];
  if (v5)
  {
    v6 = *v31;
    do
    {
      v7 = 0;
      do
      {
        if (*v31 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = [*buf objectForKeyedSubscript:*(*(&v30 + 1) + 8 * v7)];
        [(PAAccessLogger *)self log:v8 reason:1];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v30 objects:v39 count:16];
    }

    while (v5);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v9 = v35;
  v10 = [v9 countByEnumeratingWithState:&v26 objects:v38 count:16];
  if (v10)
  {
    v11 = *v27;
    do
    {
      v12 = 0;
      do
      {
        if (*v27 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v26 + 1) + 8 * v12);
        v14 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PAErrorDomain" code:10 userInfo:0];
        [(PAAccessLogger *)self notifyDidLogAccess:v13 failedWithError:v14];

        ++v12;
      }

      while (v10 != v12);
      v10 = [v9 countByEnumeratingWithState:&v26 objects:v38 count:16];
    }

    while (v10);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v15 = v36;
  v16 = [v15 countByEnumeratingWithState:&v22 objects:v37 count:16];
  if (v16)
  {
    v17 = *v23;
    do
    {
      v18 = 0;
      do
      {
        if (*v23 != v17)
        {
          objc_enumerationMutation(v15);
        }

        v19 = *(*(&v22 + 1) + 8 * v18);
        v20 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PAErrorDomain" code:11 userInfo:{0, v22}];
        [(PAAccessLogger *)self notifyDidLogAccess:v19 failedWithError:v20];

        ++v18;
      }

      while (v16 != v18);
      v16 = [v15 countByEnumeratingWithState:&v22 objects:v37 count:16];
    }

    while (v16);
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (ResyncStateResult)resyncState
{
  v41 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  v26 = retstr;
  maxRetryCount = [(PAAccessLogger *)self maxRetryCount];
  v5 = self->_state;
  v6 = objc_opt_new();
  state = self->_state;
  self->_state = v6;

  [(PAAccessLoggerState *)self->_state setLoggingEnabled:[(PAAccessLoggerState *)v5 loggingEnabled]];
  [(PAAccessLoggerState *)self->_state setTopAccessIntervalSlot:[(PAAccessLoggerState *)v5 topAccessIntervalSlot]];
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  ongoingAccessIntervals = [(PAAccessLoggerState *)v5 ongoingAccessIntervals];
  v9 = [ongoingAccessIntervals countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v9)
  {
    v10 = *v33;
    obj = ongoingAccessIntervals;
    do
    {
      v11 = 0;
      do
      {
        if (*v33 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v32 + 1) + 8 * v11);
        ongoingAccessIntervals2 = [(PAAccessLoggerState *)v5 ongoingAccessIntervals];
        v14 = [ongoingAccessIntervals2 objectForKeyedSubscript:v12];

        [v14 setRetryCount:{objc_msgSend(v14, "retryCount") + 1}];
        if ([v14 retryCount] <= maxRetryCount)
        {
          access = [v14 access];
          v19 = [access asIntervalEndEventWithTimestampAdjustment:0.0];
          [array addObject:v19];

          access2 = [v14 access];
          uUID = [MEMORY[0x1E696AFB0] UUID];
          access4 = [access2 copyWithNewIdentifier:uUID];

          asIntervalBeginEvent = [access4 asIntervalBeginEvent];
          [dictionary setObject:asIntervalBeginEvent forKeyedSubscript:v12];

          [v14 setAccess:access4];
          [(PAAccessLoggerState *)self->_state setOngoingAccessIntervalState:v14 forSlot:v12];
        }

        else
        {
          v15 = logger_3;
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            access3 = [v14 access];
            *buf = 134218242;
            v37 = maxRetryCount;
            v38 = 2112;
            v39 = access3;
            _os_log_error_impl(&dword_1DF25B000, v15, OS_LOG_TYPE_ERROR, "Dropping interval exceeding maximum retries=%ld for access=%@", buf, 0x16u);
          }

          access4 = [v14 access];
          v17 = [access4 asIntervalEndEventWithTimestampAdjustment:0.0];
          [array2 addObject:v17];
        }

        ++v11;
      }

      while (v9 != v11);
      ongoingAccessIntervals = obj;
      v9 = [obj countByEnumeratingWithState:&v32 objects:v40 count:16];
    }

    while (v9);
  }

  v26->var0 = dictionary;
  v26->var1 = array;
  v26->var2 = array2;

  os_unfair_lock_unlock(&self->_lock);
  v25 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)ensureEnablementChangedNotificationRegistered
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *self;
  v5 = 138543618;
  v6 = v3;
  v7 = 1024;
  v8 = a2;
  _os_log_error_impl(&dword_1DF25B000, log, OS_LOG_TYPE_ERROR, "Failed to register for %{public}@ notifications with code=%u", &v5, 0x12u);
  v4 = *MEMORY[0x1E69E9840];
}

- (void)lockedInvalidateState
{
  os_unfair_lock_assert_owner(&self->_lock);
  v3 = self->_state;
  v4 = objc_opt_new();
  state = self->_state;
  self->_state = v4;

  [(PAAccessLoggerState *)self->_state setTopAccessIntervalSlot:[(PAAccessLoggerState *)v3 topAccessIntervalSlot]];
  [(PAAccessLoggerState *)self->_state setLoggingEnabled:0];
  loggingEnabled = [(PAAccessLoggerState *)v3 loggingEnabled];

  if (loggingEnabled)
  {

    [(PAAccessLogger *)self lockedNotifyDidSetLoggingEnabled:0];
  }
}

- (void)log:(id)log
{
  logCopy = log;
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __22__PAAccessLogger_log___block_invoke;
  block[3] = &unk_1E86ABF70;
  objc_copyWeak(&v9, &location);
  v8 = logCopy;
  v5 = logCopy;
  v6 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_BACKGROUND, 0, block);
  dispatch_async(self->_queue, v6);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __22__PAAccessLogger_log___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained connection];

  if (v3)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = __Block_byref_object_copy__0;
    v17 = __Block_byref_object_dispose__0;
    v18 = 0;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __22__PAAccessLogger_log___block_invoke_22;
    v10[3] = &unk_1E86ABF20;
    v12 = &v13;
    v11 = *(a1 + 32);
    [WeakRetained withLockedState:v10];
    if (v14[5])
    {
      [WeakRetained notifyDidLogAccess:*(a1 + 32) failedWithError:?];
    }

    else
    {
      v6 = [WeakRetained coalescingIntervalTracker];

      if (v6)
      {
        v7 = [WeakRetained coalescingIntervalTracker];
        [v7 coalesce:*(a1 + 32)];
      }

      else
      {
        v8[0] = MEMORY[0x1E69E9820];
        v8[1] = 3221225472;
        v8[2] = __22__PAAccessLogger_log___block_invoke_2;
        v8[3] = &unk_1E86ABF48;
        v8[4] = WeakRetained;
        v9 = *(a1 + 32);
        _os_activity_initiate(&dword_1DF25B000, "PAAccessLogger -log:", OS_ACTIVITY_FLAG_DEFAULT, v8);
      }
    }

    _Block_object_dispose(&v13, 8);
  }

  else
  {
    v4 = *(a1 + 32);
    v5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PAErrorDomain" code:1 userInfo:0];
    [WeakRetained notifyDidLogAccess:v4 failedWithError:v5];
  }
}

void __22__PAAccessLogger_log___block_invoke_22(uint64_t a1, void *a2)
{
  v10 = a2;
  if ([v10 loggingEnabled])
  {
    v3 = [v10 negativeAccessCache];
    v4 = [PAAccessMatcher negativeAccessCacheMatcherForAccess:*(a1 + 32)];
    v5 = [v3 objectForKey:v4];
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }

  else
  {
    v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PAErrorDomain" code:2 userInfo:0];
    v9 = *(*(a1 + 40) + 8);
    v3 = *(v9 + 40);
    *(v9 + 40) = v8;
  }
}

- (id)beginIntervalForAccess:(id)access
{
  v38 = *MEMORY[0x1E69E9840];
  accessCopy = access;
  v5 = accessCopy;
  if (self->_connection)
  {
    asIntervalBeginEvent = [accessCopy asIntervalBeginEvent];
    v31 = 0;
    v32 = &v31;
    v33 = 0x3032000000;
    v34 = __Block_byref_object_copy__0;
    v35 = __Block_byref_object_dispose__0;
    v36 = 0;
    v25 = 0;
    v26 = &v25;
    v27 = 0x3032000000;
    v28 = __Block_byref_object_copy__0;
    v29 = __Block_byref_object_dispose__0;
    v30 = 0;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __41__PAAccessLogger_beginIntervalForAccess___block_invoke;
    v20[3] = &unk_1E86ABF98;
    v7 = asIntervalBeginEvent;
    v23 = &v31;
    v24 = &v25;
    v21 = v7;
    selfCopy = self;
    [(PAAccessLogger *)self withLockedState:v20];
    if (v32[5])
    {
      [(PAAccessLogger *)self notifyDidLogAccess:v7 failedWithError:?];
      v8 = +[PAAccessInterval placeholderAccessInterval];
    }

    else
    {
      v14 = MEMORY[0x1E69E9820];
      v15 = 3221225472;
      v16 = __41__PAAccessLogger_beginIntervalForAccess___block_invoke_28;
      v17 = &unk_1E86ABF48;
      selfCopy2 = self;
      v19 = v7;
      _os_activity_initiate(&dword_1DF25B000, "PAAccessLogger -beginIntervalForAccess:", OS_ACTIVITY_FLAG_DEFAULT, &v14);

      v10 = logger_3;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        slot = [v26[5] slot];
        [(PAAccessLogger *)slot beginIntervalForAccess:buf, v10];
      }

      v8 = v26[5];
    }

    v9 = v8;

    _Block_object_dispose(&v25, 8);
    _Block_object_dispose(&v31, 8);
  }

  else
  {
    v9 = +[PAAccessInterval placeholderAccessInterval];
  }

  v12 = *MEMORY[0x1E69E9840];

  return v9;
}

void __41__PAAccessLogger_beginIntervalForAccess___block_invoke(uint64_t *a1, void *a2)
{
  v3 = a2;
  if (([v3 loggingEnabled] & 1) == 0)
  {
    v16 = logger_3;
    if (os_log_type_enabled(logger_3, OS_LOG_TYPE_DEBUG))
    {
      __41__PAAccessLogger_beginIntervalForAccess___block_invoke_cold_1(a1, v16, v17, v18, v19, v20, v21, v22);
    }

    v23 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PAErrorDomain" code:2 userInfo:0];
    v24 = *(a1[6] + 8);
    v9 = *(v24 + 40);
    *(v24 + 40) = v23;
    goto LABEL_10;
  }

  v4 = [v3 negativeAccessCache];
  v5 = [PAAccessMatcher negativeAccessCacheMatcherForAccess:a1[4]];
  v6 = [v4 objectForKey:v5];
  v7 = *(a1[6] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  if (!*(*(a1[6] + 8) + 40))
  {
    v9 = [v3 takeOngoingAccessIntervalStateForAccess:a1[4]];
    if (v9)
    {
      v10 = logger_3;
      if (os_log_type_enabled(logger_3, OS_LOG_TYPE_ERROR))
      {
        __41__PAAccessLogger_beginIntervalForAccess___block_invoke_cold_2(a1 + 4, v10);
      }
    }

    [v3 setTopAccessIntervalSlot:{objc_msgSend(v3, "topAccessIntervalSlot") + 1}];
    v11 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v3, "topAccessIntervalSlot")}];
    v12 = [[PAOngoingAccessIntervalState alloc] initWithAccess:a1[4]];
    [v3 setOngoingAccessIntervalState:v12 forSlot:v11];

    v13 = [[PAAccessInterval alloc] initWithLogger:a1[5] slot:v11];
    v14 = *(a1[7] + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;

LABEL_10:
  }
}

- (PAAccessLogger)initWithConnection:(id)connection queue:(id)queue
{
  queueCopy = queue;
  connectionCopy = connection;
  v8 = [(PAAccessLogger *)self initWithConnection:connectionCopy queue:queueCopy enablementChangedNotificationName:@"com.apple.PrivacyAccounting.toggled" options:+[PALoggingOptionsFactory defaultLoggingOptions]];

  return v8;
}

- (PAAccessLogger)initWithConnection:(id)connection queue:(id)queue enablementChangedNotificationName:(id)name options:(unint64_t)options
{
  connectionCopy = connection;
  queueCopy = queue;
  nameCopy = name;
  v27.receiver = self;
  v27.super_class = PAAccessLogger;
  v13 = [(PAAccessLogger *)&v27 init];
  if (v13)
  {
    if (!connectionCopy)
    {
      if (_os_feature_enabled_impl())
      {
        connectionCopy = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.privacyaccountingd" options:4096];
      }

      else
      {
        connectionCopy = 0;
      }
    }

    PARegisterUserInfoValueProviderForPAErrorDomain();
    if (!queueCopy)
    {
      v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      queueCopy = dispatch_queue_create("com.apple.privacyaccounting.PAAccessLogger", v14);
    }

    objc_storeStrong(&v13->_queue, queueCopy);
    [connectionCopy _setQueue:v13->_queue];
    v15 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F5A5ED18];
    [connectionCopy setRemoteObjectInterface:v15];
    objc_initWeak(&location, v13);
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __85__PAAccessLogger_initWithConnection_queue_enablementChangedNotificationName_options___block_invoke;
    v24[3] = &unk_1E86ABD58;
    objc_copyWeak(&v25, &location);
    [connectionCopy setInterruptionHandler:v24];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __85__PAAccessLogger_initWithConnection_queue_enablementChangedNotificationName_options___block_invoke_2;
    v22[3] = &unk_1E86ABD58;
    objc_copyWeak(&v23, &location);
    [connectionCopy setInvalidationHandler:v22];
    objc_storeStrong(&v13->_connection, connectionCopy);
    v13->_options = options;
    v13->_lock._os_unfair_lock_opaque = 0;
    v16 = objc_opt_new();
    state = v13->_state;
    v13->_state = v16;

    objc_storeStrong(&v13->_enablementChangedNotificationName, name);
    v13->_enablementChangedNotificationToken = -1;
    v13->_maxRetryCount = 5;
    v18 = [[PACoalescingIntervalTracker alloc] initWithLogger:v13];
    coalescingIntervalTracker = v13->_coalescingIntervalTracker;
    v13->_coalescingIntervalTracker = v18;

    [connectionCopy resume];
    v20 = logger_3;
    if (os_log_type_enabled(logger_3, OS_LOG_TYPE_DEBUG))
    {
      [PAAccessLogger initWithConnection:connectionCopy queue:queueCopy enablementChangedNotificationName:v20 options:?];
    }

    objc_destroyWeak(&v23);
    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);
  }

  return v13;
}

void __85__PAAccessLogger_initWithConnection_queue_enablementChangedNotificationName_options___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleConnectionInterrupted];
}

void __85__PAAccessLogger_initWithConnection_queue_enablementChangedNotificationName_options___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleConnectionInvalidated];
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_connection invalidate];
  [(PACoalescingIntervalTracker *)self->_coalescingIntervalTracker invalidate];
  notify_cancel(self->_enablementChangedNotificationToken);
  v3.receiver = self;
  v3.super_class = PAAccessLogger;
  [(PAAccessLogger *)&v3 dealloc];
}

- (void)setLoggingEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  os_unfair_lock_lock(&self->_lock);
  [(PAAccessLogger *)self ensureEnablementChangedNotificationRegistered];
  if ([(PAAccessLoggerState *)self->_state loggingEnabled]!= enabledCopy)
  {
    if (enabledCopy)
    {
      [(PAAccessLoggerState *)self->_state setLoggingEnabled:1];
      [(PAAccessLogger *)self lockedNotifyDidSetLoggingEnabled:1];
    }

    else
    {
      [(PAAccessLogger *)self lockedInvalidateState];
    }
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)log:(id)log reason:(int64_t)reason
{
  logCopy = log;
  v7 = logCopy;
  if (!reason)
  {
    jSONObject = [logCopy JSONObject];
    v9 = [MEMORY[0x1E696ACB0] dataWithJSONObject:jSONObject options:0 error:0];

    v10 = logger_3;
    if (os_log_type_enabled(logger_3, OS_LOG_TYPE_DEBUG))
    {
      [PAAccessLogger log:v10 reason:v9];
    }
  }

  objc_initWeak(&location, self);
  connection = self->_connection;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __29__PAAccessLogger_log_reason___block_invoke;
  v18[3] = &unk_1E86ABFC0;
  objc_copyWeak(&v20, &location);
  v12 = v7;
  v19 = v12;
  v13 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v18];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __29__PAAccessLogger_log_reason___block_invoke_2;
  v15[3] = &unk_1E86ABFC0;
  objc_copyWeak(&v17, &location);
  v14 = v12;
  v16 = v14;
  [v13 log:v14 reason:reason reply:v15];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

void __29__PAAccessLogger_log_reason___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained notifyDidLogAccess:*(a1 + 32) failedWithError:v3];
}

void __29__PAAccessLogger_log_reason___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (!WeakRetained)
  {
    goto LABEL_30;
  }

  v5 = [*(a1 + 32) kind];
  if (v5 == 1 || v5 == 4)
  {
    v7 = v3;
    v8 = [v7 domain];
    v9 = [v8 isEqualToString:@"PAErrorDomain"];

    if (!v9)
    {
      goto LABEL_23;
    }

    v10 = [v7 code];
    if (v10 > 0x10 || ((1 << v10) & 0x14060) == 0)
    {
      goto LABEL_23;
    }

    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __29__PAAccessLogger_log_reason___block_invoke_4;
    v21[3] = &unk_1E86ABFE8;
    v22 = v7;
    v23 = *(a1 + 32);
    [WeakRetained withLockedState:v21];

    v11 = v22;
  }

  else
  {
    if (v5 != 2)
    {
      goto LABEL_24;
    }

    v7 = v3;
    v12 = [v7 domain];
    if ([v12 isEqualToString:@"PAErrorDomain"])
    {
      if ([v7 code] == 2)
      {

LABEL_23:
        goto LABEL_24;
      }

      v17 = [v7 code];

      if (v17 == 9)
      {
        goto LABEL_23;
      }
    }

    else
    {
    }

    v13 = [v7 domain];
    v14 = [v13 isEqualToString:@"PAErrorDomain"];

    if (!v14)
    {
      goto LABEL_23;
    }

    v15 = [v7 code];
    if (v15 == 3)
    {
      goto LABEL_23;
    }

    if (v15 == 12)
    {
      v16 = PAErrorBoolValueForUserInfoKey(v7, @"PASimulatedErrorShouldShouldDropOngoingIntervalState");

      if (!v16)
      {
        goto LABEL_24;
      }
    }

    else
    {
    }

    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __29__PAAccessLogger_log_reason___block_invoke_3;
    v24[3] = &unk_1E86ABFE8;
    v25 = *(a1 + 32);
    v26 = v7;
    [WeakRetained withLockedState:v24];

    v11 = v25;
  }

LABEL_24:
  v18 = v3;
  v19 = [v18 domain];
  if ([v19 isEqualToString:@"PAErrorDomain"])
  {
    v20 = [v18 code] != 2 && objc_msgSend(v18, "code") != 9;
  }

  else
  {
    v20 = 1;
  }

  [WeakRetained setLoggingEnabled:v20];
  [WeakRetained notifyDidLogAccess:*(a1 + 32) failedWithError:v18];
LABEL_30:
}

void __29__PAAccessLogger_log_reason___block_invoke_3(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = [v11 takeOngoingAccessIntervalStateForAccess:*(a1 + 32)];
  v4 = *(a1 + 40);
  v5 = [v4 domain];
  v6 = [v5 isEqualToString:@"PAErrorDomain"];

  if (v6)
  {
    v7 = [v4 code];
    if (v7 <= 0x10 && ((1 << v7) & 0x14060) != 0)
    {

      v4 = [v11 negativeAccessCache];
      v9 = *(a1 + 40);
      v10 = [PAAccessMatcher negativeAccessCacheMatcherForAccess:*(a1 + 32)];
      [v4 setObject:v9 forKey:v10];
    }
  }
}

void __29__PAAccessLogger_log_reason___block_invoke_4(uint64_t a1, void *a2)
{
  v5 = [a2 negativeAccessCache];
  v3 = *(a1 + 32);
  v4 = [PAAccessMatcher negativeAccessCacheMatcherForAccess:*(a1 + 40)];
  [v5 setObject:v3 forKey:v4];
}

- (void)recordAssetIdentifiers:(id)identifiers withVisibilityState:(int64_t)state accessEventCount:(unint64_t)count forSlot:(id)slot
{
  identifiersCopy = identifiers;
  slotCopy = slot;
  if ([slotCopy integerValue] >= 1 && objc_msgSend(identifiersCopy, "count"))
  {
    v24 = 0;
    v25 = &v24;
    v26 = 0x3032000000;
    v27 = __Block_byref_object_copy__0;
    v28 = __Block_byref_object_dispose__0;
    v29 = 0;
    v18 = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = __86__PAAccessLogger_recordAssetIdentifiers_withVisibilityState_accessEventCount_forSlot___block_invoke;
    v21 = &unk_1E86ABF20;
    v23 = &v24;
    v12 = slotCopy;
    v22 = v12;
    [(PAAccessLogger *)self withLockedState:&v18];
    if (v25[5])
    {
      if ([identifiersCopy count] || (v13 = v25[5], objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (objc_msgSend(v25[5], "tccService"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "isEqual:", *MEMORY[0x1E69D5580]), v14, (v15 & 1) == 0))
      {
        v16 = [v25[5] asIntervalEventWithAssetIdentifiers:identifiersCopy visibilityState:state accessEventCount:count];
        [(PAAccessLogger *)self log:v16 reason:0];
      }
    }

    else
    {
      v17 = logger_3;
      if (os_log_type_enabled(logger_3, OS_LOG_TYPE_ERROR))
      {
        [PAAccessLogger recordAssetIdentifiers:v12 withVisibilityState:v17 accessEventCount:? forSlot:?];
      }
    }

    _Block_object_dispose(&v24, 8);
  }
}

uint64_t __86__PAAccessLogger_recordAssetIdentifiers_withVisibilityState_accessEventCount_forSlot___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 lookupCurrentAccessForSlot:*(a1 + 32)];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x1EEE66BB8]();
}

- (void)endIntervalWithSlot:(id)slot timestampAdjustment:(double)adjustment accessCount:(int64_t)count
{
  slotCopy = slot;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__0;
  v25 = __Block_byref_object_dispose__0;
  v26 = 0;
  if ([slotCopy integerValue] >= 1)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __70__PAAccessLogger_endIntervalWithSlot_timestampAdjustment_accessCount___block_invoke;
    v18[3] = &unk_1E86AC010;
    v19 = slotCopy;
    v20 = &v21;
    [(PAAccessLogger *)self withLockedState:v18];
  }

  v9 = v22[5];
  if (v9)
  {
    v10 = [v9 asIntervalEndEventWithTimestampAdjustment:adjustment];
    [v10 setAccessCount:count];
    [(PAAccessLogger *)self log:v10 reason:0];
  }

  else
  {
    v11 = logger_3;
    if (os_log_type_enabled(logger_3, OS_LOG_TYPE_DEBUG))
    {
      [(PAAccessLogger *)slotCopy endIntervalWithSlot:v11 timestampAdjustment:v12 accessCount:v13, v14, v15, v16, v17];
    }
  }

  _Block_object_dispose(&v21, 8);
}

void __70__PAAccessLogger_endIntervalWithSlot_timestampAdjustment_accessCount___block_invoke(uint64_t a1, void *a2)
{
  v6 = [a2 takeOngoingAccessIntervalStateForSlot:*(a1 + 32)];
  v3 = [v6 access];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)withLockedState:(id)state
{
  stateCopy = state;
  os_unfair_lock_lock(&self->_lock);
  stateCopy[2](stateCopy, self->_state);
  os_unfair_lock_unlock(&self->_lock);
}

- (void)handleConnectionInvalidated
{
  v3 = logger_3;
  if (os_log_type_enabled(logger_3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_1DF25B000, v3, OS_LOG_TYPE_INFO, "XPC connection invalidated", v4, 2u);
  }

  os_unfair_lock_lock(&self->_lock);
  [(PAAccessLogger *)self lockedInvalidateState];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)lockedNotifyDidSetLoggingEnabled:(BOOL)enabled
{
  os_unfair_lock_assert_owner(&self->_lock);
  delegate = [(PAAccessLogger *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    objc_initWeak(&location, self);
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __51__PAAccessLogger_lockedNotifyDidSetLoggingEnabled___block_invoke;
    block[3] = &unk_1E86AC038;
    objc_copyWeak(&v9, &location);
    enabledCopy = enabled;
    dispatch_async(queue, block);
    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

void __51__PAAccessLogger_lockedNotifyDidSetLoggingEnabled___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained delegate];
  [v2 logger:WeakRetained didSetLoggingEnabled:*(a1 + 40)];
}

- (void)notifyDidLogAccess:(id)access failedWithError:(id)error
{
  v32 = *MEMORY[0x1E69E9840];
  accessCopy = access;
  errorCopy = error;
  v8 = logger_3;
  if (errorCopy)
  {
    v9 = logger_3;
    domain = [errorCopy domain];
    v11 = [domain isEqualToString:@"PAErrorDomain"];

    if (v11 && (v12 = [errorCopy code] - 1, v12 <= 0xF))
    {
      v13 = byte_1DF27EA20[v12];
    }

    else
    {
      v13 = OS_LOG_TYPE_ERROR;
    }

    if (os_log_type_enabled(v9, v13))
    {
      *buf = 138412546;
      v29 = accessCopy;
      v30 = 2114;
      v31 = errorCopy;
      _os_log_impl(&dword_1DF25B000, v9, v13, "Failed to log access with error: access=%@, error=%{public}@", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(logger_3, OS_LOG_TYPE_DEBUG))
  {
    [(PAAccessLogger *)accessCopy notifyDidLogAccess:v8 failedWithError:v14, v15, v16, v17, v18, v19];
  }

  delegate = [(PAAccessLogger *)self delegate];
  v21 = objc_opt_respondsToSelector();

  if (v21)
  {
    objc_initWeak(buf, self);
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __53__PAAccessLogger_notifyDidLogAccess_failedWithError___block_invoke;
    block[3] = &unk_1E86AC060;
    objc_copyWeak(&v27, buf);
    v25 = accessCopy;
    v26 = errorCopy;
    dispatch_async(queue, block);

    objc_destroyWeak(&v27);
    objc_destroyWeak(buf);
  }

  v23 = *MEMORY[0x1E69E9840];
}

void __53__PAAccessLogger_notifyDidLogAccess_failedWithError___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained delegate];
  [v2 logger:WeakRetained didLogAccess:*(a1 + 32) failedWithError:*(a1 + 40)];
}

- (void)notifyDidCoalesceAccess:(id)access
{
  accessCopy = access;
  delegate = [(PAAccessLogger *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    objc_initWeak(&location, self);
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __42__PAAccessLogger_notifyDidCoalesceAccess___block_invoke;
    block[3] = &unk_1E86ABF70;
    objc_copyWeak(&v10, &location);
    v9 = accessCopy;
    dispatch_async(queue, block);

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

void __42__PAAccessLogger_notifyDidCoalesceAccess___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained delegate];
  [v2 logger:WeakRetained didCoalesceAccess:*(a1 + 32)];
}

void __63__PAAccessLogger_ensureEnablementChangedNotificationRegistered__block_invoke(uint64_t a1, int a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = logger_3;
  if (os_log_type_enabled(logger_3, OS_LOG_TYPE_INFO))
  {
    v7[0] = 67109120;
    v7[1] = a2;
    _os_log_impl(&dword_1DF25B000, v4, OS_LOG_TYPE_INFO, "Received enablement changed notification with token=%d", v7, 8u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setLoggingEnabled:1];

  v6 = *MEMORY[0x1E69E9840];
}

- (PAAccessLogger)initWithConnection:(id)connection queue:(id)queue forcingOptions:(unint64_t)options error:(id *)error
{
  connectionCopy = connection;
  queueCopy = queue;
  v12 = [(PAAccessLogger *)self initWithConnection:connectionCopy queue:queueCopy enablementChangedNotificationName:@"com.apple.PrivacyAccounting.toggled" options:options];
  if (v12)
  {
    v33 = 0;
    v34 = &v33;
    v35 = 0x3032000000;
    v36 = __Block_byref_object_copy__0;
    v37 = __Block_byref_object_dispose__0;
    v38 = 0;
    v13 = dispatch_semaphore_create(0);
    connection = [(PAAccessLogger *)v12 connection];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __73__PAAccessLogger_Testing__initWithConnection_queue_forcingOptions_error___block_invoke;
    v30[3] = &unk_1E86AC0B0;
    v32 = &v33;
    v15 = v13;
    v31 = v15;
    v16 = [connection remoteObjectProxyWithErrorHandler:v30];
    v24 = MEMORY[0x1E69E9820];
    v25 = 3221225472;
    v26 = __73__PAAccessLogger_Testing__initWithConnection_queue_forcingOptions_error___block_invoke_2;
    v27 = &unk_1E86AC0B0;
    v29 = &v33;
    v17 = v15;
    v28 = v17;
    [v16 changeTestingSettings:0 reply:{options, &v24}];

    v18 = dispatch_time(0, 5000000000);
    if (dispatch_semaphore_wait(v17, v18))
    {
      if (error)
      {
        [MEMORY[0x1E696ABC0] errorWithDomain:@"PAErrorDomain" code:20 userInfo:{0, v24, v25, v26, v27}];
        *error = v19 = 0;
      }

      else
      {
        v19 = 0;
      }
    }

    else
    {
      v20 = v34;
      if (error)
      {
        v21 = v34[5];
        if (v21)
        {
          *error = v21;
          v20 = v34;
        }
      }

      if (v20[5])
      {
        v22 = 0;
      }

      else
      {
        v22 = v12;
      }

      v19 = v22;
    }

    _Block_object_dispose(&v33, 8);
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

void __73__PAAccessLogger_Testing__initWithConnection_queue_forcingOptions_error___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void __73__PAAccessLogger_Testing__initWithConnection_queue_forcingOptions_error___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)beginIntervalForAccess:(os_log_t)log .cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_debug_impl(&dword_1DF25B000, log, OS_LOG_TYPE_DEBUG, "Began interval with slot=%{public}@", buf, 0xCu);
}

void __41__PAAccessLogger_beginIntervalForAccess___block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = HIDWORD(*(a1 + 32));
  OUTLINED_FUNCTION_0_0(&dword_1DF25B000, a2, a3, "Logging disabled; returning placeholder interval for access=%@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void __41__PAAccessLogger_beginIntervalForAccess___block_invoke_cold_2(uint64_t *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v4 = 138412290;
  v5 = v2;
  _os_log_error_impl(&dword_1DF25B000, a2, OS_LOG_TYPE_ERROR, "Trying to begin new interval for access=%@ already associated with ongoing interval", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)initWithConnection:(os_log_t)log queue:enablementChangedNotificationName:options:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = 136315650;
  v5 = "[PAAccessLogger initWithConnection:queue:enablementChangedNotificationName:options:]";
  v6 = 2112;
  v7 = a1;
  v8 = 2112;
  v9 = a2;
  _os_log_debug_impl(&dword_1DF25B000, log, OS_LOG_TYPE_DEBUG, "%s: connection=%@, queue=%@", &v4, 0x20u);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)log:(void *)a1 reason:(void *)a2 .cold.1(void *a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v5[0] = 68157954;
  v5[1] = [a2 length];
  v6 = 2080;
  v7 = [a2 bytes];
  _os_log_debug_impl(&dword_1DF25B000, v3, OS_LOG_TYPE_DEBUG, "#QA #PAAccess %.*s", v5, 0x12u);

  v4 = *MEMORY[0x1E69E9840];
}

- (void)recordAssetIdentifiers:(uint64_t)a1 withVisibilityState:(NSObject *)a2 accessEventCount:forSlot:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_1DF25B000, a2, OS_LOG_TYPE_ERROR, "Tried to record asset identifiers for a closed interval.  Slot=%{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)endIntervalWithSlot:(uint64_t)a3 timestampAdjustment:(uint64_t)a4 accessCount:(uint64_t)a5 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0(&dword_1DF25B000, a2, a3, "Tried to end interval with unknown slot=%{public}@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)notifyDidLogAccess:(uint64_t)a3 failedWithError:(uint64_t)a4 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0(&dword_1DF25B000, a2, a3, "Logged access: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

@end