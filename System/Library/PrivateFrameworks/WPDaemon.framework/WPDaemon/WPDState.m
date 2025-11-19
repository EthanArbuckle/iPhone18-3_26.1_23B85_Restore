@interface WPDState
+ (int64_t)getWPStateFromCBManagerState:(int64_t)a3;
- (OS_dispatch_queue)cbQueue;
- (WPDState)initWithQueue:(id)a3;
- (id)description;
- (id)notification;
- (void)coalesceState:(int64_t *)a3 Restricted:(BOOL *)a4 UpdateCache:(BOOL)a5;
- (void)dealloc;
- (void)registerManager:(id)a3;
- (void)updateWithCompletion:(id)a3;
- (void)updateWithManager:(id)a3 Completion:(id)a4;
@end

@implementation WPDState

- (WPDState)initWithQueue:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = WPDState;
  v5 = [(WPDState *)&v12 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_cbQueue, v4);
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
  v3 = [(WPDState *)self cbStates];
  [v3 removeAllObjects];

  v4 = [(WPDState *)self cbManagers];
  [v4 removeAllObjects];

  v5.receiver = self;
  v5.super_class = WPDState;
  [(WPDState *)&v5 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(WPDState *)self state];
  v5 = [(WPDState *)self restricted];
  v6 = "no";
  if (v5)
  {
    v6 = "yes";
  }

  return [v3 stringWithFormat:@"state: %d, restricted: %s", v4, v6];
}

- (void)registerManager:(id)a3
{
  v4 = a3;
  if (WPLogInitOnce != -1)
  {
    [WPDState registerManager:];
  }

  v5 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
  {
    [(WPDState *)v4 registerManager:v5];
  }

  v6 = [(WPDState *)self cbManagers];
  [v6 addObject:v4];

  v7 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v4, "state")}];
  v8 = [(WPDState *)self cbStates];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v4, "hash")}];
  [v8 setObject:v7 forKeyedSubscript:v9];
}

- (void)updateWithManager:(id)a3 Completion:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([(WPDState *)self initialUpdate])
  {
    v8 = [(WPDState *)self cbManagers];
    v9 = [v8 containsObject:v6];

    if (v9)
    {
      v10 = [v6 state];
      v11 = [MEMORY[0x277CCABB0] numberWithInteger:v10];
      v12 = [(WPDState *)self cbStates];
      v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v6, "hash")}];
      [v12 setObject:v11 forKeyedSubscript:v13];

      v14 = [WPDState getWPStateFromCBManagerState:v10];
      v23 = v14;
      v15 = [MEMORY[0x277CCABB0] numberWithInteger:v10];
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
        if (v7)
        {
          v7[2](v7);
        }

        if (WPLogInitOnce != -1)
        {
          [WPDState updateWithManager:Completion:];
        }

        v18 = WiProxLog;
        if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412802;
          v25 = v6;
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
        [WPDState updateWithManager:v6 Completion:v20];
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

- (void)updateWithCompletion:(id)a3
{
  v4 = a3;
  v9 = 0;
  v8 = 0;
  [(WPDState *)self setInitialUpdate:1];
  [(WPDState *)self coalesceState:&v9 Restricted:&v8 UpdateCache:1];
  v5 = v9;
  if (v5 != [(WPDState *)self state]|| (v6 = v8, v6 != [(WPDState *)self restricted]))
  {
    [(WPDState *)self setState:v9];
    [(WPDState *)self setRestricted:v8];
    if (v4)
    {
      v4[2](v4);
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

- (void)coalesceState:(int64_t *)a3 Restricted:(BOOL *)a4 UpdateCache:(BOOL)a5
{
  v35 = *MEMORY[0x277D85DE8];
  v22 = a5;
  if (a5)
  {
    v8 = [(WPDState *)self cbManagers];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __49__WPDState_coalesceState_Restricted_UpdateCache___block_invoke;
    v27[3] = &unk_279E58E38;
    v27[4] = self;
    [v8 enumerateObjectsUsingBlock:v27];
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = [(WPDState *)self cbStates];
  v10 = [v9 allValues];

  v11 = [v10 countByEnumeratingWithState:&v23 objects:v34 count:16];
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
        objc_enumerationMutation(v10);
      }

      v16 = [*(*(&v23 + 1) + 8 * v15) integerValue];
      v17 = [WPDState getWPStateFromCBManagerState:v16];
      if (v17 < v14)
      {
        v14 = v17;
      }

      v18 = [MEMORY[0x277CCABB0] numberWithInteger:v16];
      v19 = [&unk_288201970 isEqualToNumber:v18];

      if (!v14 || (v19 & 1) != 0)
      {
        break;
      }

      if (v12 == ++v15)
      {
        v12 = [v10 countByEnumeratingWithState:&v23 objects:v34 count:16];
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
    v33 = v22;
    _os_log_debug_impl(&dword_272965000, v20, OS_LOG_TYPE_DEBUG, "WPDState coalesce state:%d restricted:%d cache updated:%d ", buf, 0x14u);
  }

  *a3 = v14;
  *a4 = v19;
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

+ (int64_t)getWPStateFromCBManagerState:(int64_t)a3
{
  if (a3 > 0xA)
  {
    return 0;
  }

  else
  {
    return qword_2729CD258[a3];
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