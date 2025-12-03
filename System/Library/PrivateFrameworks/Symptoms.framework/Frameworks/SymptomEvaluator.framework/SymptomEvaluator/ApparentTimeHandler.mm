@interface ApparentTimeHandler
+ (id)sharedInstance;
- (ApparentTimeHandler)init;
- (ApparentTimeHandlerDelegate)delegate;
- (void)dispatchAfterDelay:(double)delay queue:(id)queue block:(id)block;
- (void)timerCallbackWithReference:(id)reference at:(double)at;
@end

@implementation ApparentTimeHandler

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__ApparentTimeHandler_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_pred_40 != -1)
  {
    dispatch_once(&sharedInstance_pred_40, block);
  }

  v2 = sharedInstance_sharedInstance_42;

  return v2;
}

- (void)dispatchAfterDelay:(double)delay queue:(id)queue block:(id)block
{
  v32 = *MEMORY[0x277D85DE8];
  queueCopy = queue;
  blockCopy = block;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (activeTraceTargets)
  {
    traceEntry(1, "[ApparentTimeHandler dispatchAfterDelay:queue:block:]", "%f", v10, v11, v12, v13, v14, *&delay);
  }

  if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v16 = self->_pendingDispatchAfterBlocks;
    objc_sync_enter(v16);
    v17 = MEMORY[0x277CCABB0];
    ++self->_dispatchAfterSeqno;
    v18 = [v17 numberWithUnsignedInt:?];
    v19 = _Block_copy(blockCopy);
    [(NSMutableDictionary *)self->_pendingDispatchAfterBlocks setObject:v19 forKeyedSubscript:v18];

    objc_sync_exit(v16);
    v20 = apparentTimeLogHandle;
    if (os_log_type_enabled(apparentTimeLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      delayCopy3 = delay;
      v30 = 2112;
      v31 = v18;
      _os_log_impl(&dword_23255B000, v20, OS_LOG_TYPE_DEFAULT, "ApparentTimeHandler about to delegate dispatchAfterDelay %.3f to reference %@", buf, 0x16u);
    }

    if (activeTraceTargets)
    {
      traceCallout(1, "[ApparentTimeHandler dispatchAfterDelay:queue:block:]", "setTimerCallbackWithDelay:queue:reference:", "%f %@", v21, v22, v23, v24, *&delay);
    }

    [WeakRetained setTimerCallbackWithDelay:queueCopy queue:v18 reference:delay];
    v25 = apparentTimeLogHandle;
    if (os_log_type_enabled(apparentTimeLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      delayCopy3 = delay;
      v30 = 2112;
      v31 = v18;
      _os_log_impl(&dword_23255B000, v25, OS_LOG_TYPE_DEFAULT, "ApparentTimeHandler delegated dispatchAfterDelay %.3f to reference %@", buf, 0x16u);
    }
  }

  else
  {
    v26 = apparentTimeLogHandle;
    if (os_log_type_enabled(apparentTimeLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      delayCopy3 = delay;
      _os_log_impl(&dword_23255B000, v26, OS_LOG_TYPE_ERROR, "ApparentTimeHandler no delegate to handle dispatchAfterDelay %.3f", buf, 0xCu);
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)timerCallbackWithReference:(id)reference at:(double)at
{
  v23 = *MEMORY[0x277D85DE8];
  referenceCopy = reference;
  v7 = apparentTimeLogHandle;
  if (os_log_type_enabled(apparentTimeLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v13 = v7;
    v14 = dateStringMillisecondsFromTimeInterval(at);
    *buf = 138412546;
    v20 = referenceCopy;
    v21 = 2112;
    v22 = v14;
    _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_DEBUG, "ApparentTimeHandler timerCallbackWithReference %@ at %@", buf, 0x16u);
  }

  if (activeTraceTargets)
  {
    traceEntry(1, "[ApparentTimeHandler timerCallbackWithReference:at:]", "%@ %t", v8, v9, v10, v11, v12, referenceCopy);
  }

  setApparentTime(at);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = referenceCopy;
    v16 = self->_pendingDispatchAfterBlocks;
    objc_sync_enter(v16);
    v17 = [(NSMutableDictionary *)self->_pendingDispatchAfterBlocks objectForKeyedSubscript:v15];
    [(NSMutableDictionary *)self->_pendingDispatchAfterBlocks removeObjectForKey:v15];
    objc_sync_exit(v16);

    if (v17)
    {
      v17[2](v17);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (ApparentTimeHandler)init
{
  v6.receiver = self;
  v6.super_class = ApparentTimeHandler;
  v2 = [(ApparentTimeHandler *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    pendingDispatchAfterBlocks = v2->_pendingDispatchAfterBlocks;
    v2->_pendingDispatchAfterBlocks = v3;
  }

  return v2;
}

uint64_t __37__ApparentTimeHandler_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance_sharedInstance_42 = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (ApparentTimeHandlerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end