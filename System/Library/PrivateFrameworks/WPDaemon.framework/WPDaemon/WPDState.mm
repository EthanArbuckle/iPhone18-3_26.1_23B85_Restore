@interface WPDState
+ (int64_t)getWPStateFromCBManagerState:(int64_t)state;
- (OS_dispatch_queue)cbQueue;
- (WPDState)initWithQueue:(id)queue;
- (id)description;
- (id)notification;
- (void)coalesceState:(int64_t *)state Restricted:(BOOL *)restricted UpdateCache:(BOOL)cache;
- (void)dealloc;
- (void)registerManager:(id)manager;
- (void)updateWithCompletion:(id)completion;
- (void)updateWithManager:(id)manager Completion:(id)completion;
@end

@implementation WPDState

- (WPDState)initWithQueue:(id)queue
{
  queueCopy = queue;
  v12.receiver = self;
  v12.super_class = WPDState;
  v5 = [(WPDState *)&v12 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_cbQueue, queueCopy);
    v6->_state = 0;
    *&v6->_restricted = 0;
    v7 = objc_opt_new();
    cbManagers = v6->_cbManagers;
    v6->_cbManagers = v7;

    v9 = objc_opt_new();
    cbStates = v6->_cbStates;
    v6->_cbStates = v9;
  }

  return v6;
}

- (void)dealloc
{
  [(WPDState *)self setState:0];
  [(WPDState *)self setRestricted:0];
  cbStates = [(WPDState *)self cbStates];
  [cbStates removeAllObjects];

  cbManagers = [(WPDState *)self cbManagers];
  [cbManagers removeAllObjects];

  v5.receiver = self;
  v5.super_class = WPDState;
  [(WPDState *)&v5 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  state = [(WPDState *)self state];
  restricted = [(WPDState *)self restricted];
  v6 = "no";
  if (restricted)
  {
    v6 = "yes";
  }

  return [v3 stringWithFormat:@"state: %d, restricted: %s", state, v6];
}

- (void)registerManager:(id)manager
{
  managerCopy = manager;
  if (WPLogInitOnce != -1)
  {
    [WPDState registerManager:];
  }

  v5 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
  {
    [(WPDState *)managerCopy registerManager:v5];
  }

  cbManagers = [(WPDState *)self cbManagers];
  [cbManagers addObject:managerCopy];

  v7 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(managerCopy, "state")}];
  cbStates = [(WPDState *)self cbStates];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(managerCopy, "hash")}];
  [cbStates setObject:v7 forKeyedSubscript:v9];
}

- (void)updateWithManager:(id)manager Completion:(id)completion
{
  v30 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  completionCopy = completion;
  if ([(WPDState *)self initialUpdate])
  {
    cbManagers = [(WPDState *)self cbManagers];
    v9 = [cbManagers containsObject:managerCopy];

    if (v9)
    {
      state = [managerCopy state];
      v11 = [MEMORY[0x277CCABB0] numberWithInteger:state];
      cbStates = [(WPDState *)self cbStates];
      v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(managerCopy, "hash")}];
      [cbStates setObject:v11 forKeyedSubscript:v13];

      v14 = [WPDState getWPStateFromCBManagerState:state];
      v23 = v14;
      v15 = [MEMORY[0x277CCABB0] numberWithInteger:state];
      v16 = [&unk_288201970 isEqualToNumber:v15];

      v22 = v16;
      if (v14 > [(WPDState *)self state]|| (v16 & 1) == 0)
      {
        [(WPDState *)self coalesceState:&v23 Restricted:&v22 UpdateCache:0];
        v14 = v23;
      }

      if (v14 != [(WPDState *)self state]|| (v17 = v22, v17 != [(WPDState *)self restricted]))
      {
        [(WPDState *)self setState:v23];
        [(WPDState *)self setRestricted:v22];
        if (completionCopy)
        {
          completionCopy[2](completionCopy);
        }

        if (WPLogInitOnce != -1)
        {
          [WPDState updateWithManager:Completion:];
        }

        v18 = WiProxLog;
        if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412802;
          v25 = managerCopy;
          v26 = 1024;
          v27 = v23;
          v28 = 1024;
          v29 = v22;
          _os_log_debug_impl(&dword_272965000, v18, OS_LOG_TYPE_DEBUG, "WPDState updated with manager %@ to state: %d restricted: %d", buf, 0x18u);
        }
      }
    }

    else
    {
      if (WPLogInitOnce != -1)
      {
        [WPDState updateWithManager:Completion:];
      }

      v20 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
      {
        [WPDState updateWithManager:managerCopy Completion:v20];
      }
    }
  }

  else
  {
    if (WPLogInitOnce != -1)
    {
      [WPDState updateWithManager:Completion:];
    }

    v19 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
    {
      [WPDState updateWithManager:v19 Completion:?];
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)updateWithCompletion:(id)completion
{
  completionCopy = completion;
  v9 = 0;
  v8 = 0;
  [(WPDState *)self setInitialUpdate:1];
  [(WPDState *)self coalesceState:&v9 Restricted:&v8 UpdateCache:1];
  v5 = v9;
  if (v5 != [(WPDState *)self state]|| (v6 = v8, v6 != [(WPDState *)self restricted]))
  {
    [(WPDState *)self setState:v9];
    [(WPDState *)self setRestricted:v8];
    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }

    if (WPLogInitOnce != -1)
    {
      [WPDState updateWithCompletion:];
    }

    v7 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
    {
      [(WPDState *)&v9 updateWithCompletion:v7];
    }
  }
}

- (void)coalesceState:(int64_t *)state Restricted:(BOOL *)restricted UpdateCache:(BOOL)cache
{
  v35 = *MEMORY[0x277D85DE8];
  cacheCopy = cache;
  if (cache)
  {
    cbManagers = [(WPDState *)self cbManagers];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __49__WPDState_coalesceState_Restricted_UpdateCache___block_invoke;
    v27[3] = &unk_279E58E38;
    v27[4] = self;
    [cbManagers enumerateObjectsUsingBlock:v27];
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  cbStates = [(WPDState *)self cbStates];
  allValues = [cbStates allValues];

  v11 = [allValues countByEnumeratingWithState:&v23 objects:v34 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v24;
    v14 = 3;
LABEL_5:
    v15 = 0;
    while (1)
    {
      if (*v24 != v13)
      {
        objc_enumerationMutation(allValues);
      }

      integerValue = [*(*(&v23 + 1) + 8 * v15) integerValue];
      v17 = [WPDState getWPStateFromCBManagerState:integerValue];
      if (v17 < v14)
      {
        v14 = v17;
      }

      v18 = [MEMORY[0x277CCABB0] numberWithInteger:integerValue];
      v19 = [&unk_288201970 isEqualToNumber:v18];

      if (!v14 || (v19 & 1) != 0)
      {
        break;
      }

      if (v12 == ++v15)
      {
        v12 = [allValues countByEnumeratingWithState:&v23 objects:v34 count:16];
        if (v12)
        {
          goto LABEL_5;
        }

        v19 = 0;
        break;
      }
    }
  }

  else
  {
    v19 = 0;
    v14 = 3;
  }

  if (WPLogInitOnce != -1)
  {
    [WPDState coalesceState:Restricted:UpdateCache:];
  }

  v20 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109632;
    v29 = v14;
    v30 = 1024;
    v31 = v19;
    v32 = 1024;
    v33 = cacheCopy;
    _os_log_debug_impl(&dword_272965000, v20, OS_LOG_TYPE_DEBUG, "WPDState coalesce state:%d restricted:%d cache updated:%d ", buf, 0x14u);
  }

  *state = v14;
  *restricted = v19;
  v21 = *MEMORY[0x277D85DE8];
}

void __49__WPDState_coalesceState_Restricted_UpdateCache___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCABB0];
  v4 = a2;
  v9 = [v3 numberWithInteger:{objc_msgSend(v4, "state")}];
  v5 = [*(a1 + 32) cbStates];
  v6 = MEMORY[0x277CCABB0];
  v7 = [v4 hash];

  v8 = [v6 numberWithUnsignedInteger:v7];
  [v5 setObject:v9 forKeyedSubscript:v8];
}

+ (int64_t)getWPStateFromCBManagerState:(int64_t)state
{
  if (state > 0xA)
  {
    return 0;
  }

  else
  {
    return qword_2729CD258[state];
  }
}

- (OS_dispatch_queue)cbQueue
{
  WeakRetained = objc_loadWeakRetained(&self->_cbQueue);

  return WeakRetained;
}

- (id)notification
{
  WeakRetained = objc_loadWeakRetained(&self->_notification);

  return WeakRetained;
}

- (void)registerManager:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_272965000, a2, OS_LOG_TYPE_DEBUG, "WPDState registered manager %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)updateWithManager:(uint64_t)a1 Completion:(NSObject *)a2 .cold.4(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_272965000, a2, OS_LOG_TYPE_ERROR, "WPDState update with manager - unexpected CBManager %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)updateWithCompletion:(os_log_t)log .cold.2(uint64_t *a1, unsigned __int8 *a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *a2;
  v6[0] = 67109376;
  v6[1] = v3;
  v7 = 1024;
  v8 = v4;
  _os_log_debug_impl(&dword_272965000, log, OS_LOG_TYPE_DEBUG, "WPDState updated to state:%d restricted:%d", v6, 0xEu);
  v5 = *MEMORY[0x277D85DE8];
}

@end