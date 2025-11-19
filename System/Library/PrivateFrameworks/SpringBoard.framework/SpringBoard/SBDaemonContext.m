@interface SBDaemonContext
- (SBDaemonContext)initWithPid:(int)a3 queue:(id)a4;
- (id)_newDispatchSourceForPid:(int)a3 queue:(id)a4;
- (id)description;
- (void)_handleCancelation;
- (void)addRequest:(id)a3 forKey:(id)a4;
- (void)removeRequestForKey:(id)a3;
@end

@implementation SBDaemonContext

- (void)_handleCancelation
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [(NSMutableDictionary *)self->_daemonRequests allValues];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    v7 = MEMORY[0x277D85CD0];
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v11 + 1) + 8 * v8++) dispatchDisablerOnQueue:v7];
      }

      while (v5 != v8);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  daemonRequests = self->_daemonRequests;
  self->_daemonRequests = 0;

  dispatchSource = self->_dispatchSource;
  if (dispatchSource)
  {
    self->_dispatchSource = 0;
  }

  [SBDaemonHandler noteDaemonCanceled:self];
}

- (SBDaemonContext)initWithPid:(int)a3 queue:(id)a4
{
  v4 = *&a3;
  v6 = a4;
  v14.receiver = self;
  v14.super_class = SBDaemonContext;
  v7 = [(SBDaemonContext *)&v14 init];
  v8 = v7;
  if (v7)
  {
    v7->_pid = v4;
    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    daemonRequests = v8->_daemonRequests;
    v8->_daemonRequests = v9;

    v11 = [(SBDaemonContext *)v8 _newDispatchSourceForPid:v4 queue:v6];
    dispatchSource = v8->_dispatchSource;
    v8->_dispatchSource = v11;

    if (!v8->_dispatchSource)
    {

      v8 = 0;
    }
  }

  return v8;
}

- (id)_newDispatchSourceForPid:(int)a3 queue:(id)a4
{
  v6 = a4;
  if (!a3)
  {
    v9 = SBLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [SBDaemonContext _newDispatchSourceForPid:v9 queue:?];
    }

    goto LABEL_8;
  }

  v7 = dispatch_source_create(MEMORY[0x277D85D20], a3, 0x80000000uLL, v6);
  if (!v7)
  {
    v9 = SBLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [SBDaemonContext _newDispatchSourceForPid:a3 queue:v9];
    }

LABEL_8:
    v8 = 0;
    goto LABEL_9;
  }

  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __50__SBDaemonContext__newDispatchSourceForPid_queue___block_invoke;
  handler[3] = &unk_2783A8C18;
  v8 = v7;
  v13 = v8;
  dispatch_source_set_event_handler(v8, handler);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __50__SBDaemonContext__newDispatchSourceForPid_queue___block_invoke_2;
  v11[3] = &unk_2783A8C18;
  v11[4] = self;
  dispatch_source_set_cancel_handler(v8, v11);
  dispatch_resume(v8);
  v9 = v13;
LABEL_9:

  return v8;
}

- (void)addRequest:(id)a3 forKey:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(NSMutableDictionary *)self->_daemonRequests objectForKey:v6];
  if (!v7)
  {
    [(NSMutableDictionary *)self->_daemonRequests setObject:v8 forKey:v6];
    [v8 dispatchEnablerOnQueue:MEMORY[0x277D85CD0]];
  }
}

- (void)removeRequestForKey:(id)a3
{
  v5 = a3;
  v4 = [(NSMutableDictionary *)self->_daemonRequests objectForKey:?];
  if (v4)
  {
    [(NSMutableDictionary *)self->_daemonRequests removeObjectForKey:v5];
    [v4 dispatchDisablerOnQueue:MEMORY[0x277D85CD0]];
    if (![(NSMutableDictionary *)self->_daemonRequests count])
    {
      dispatch_source_cancel(self->_dispatchSource);
    }
  }
}

- (id)description
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAB68] stringWithFormat:@"%@[%i]:", objc_opt_class(), -[SBDaemonContext pid](self, "pid")];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = self->_daemonRequests;
  v5 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [v3 appendFormat:@" %@", *(*(&v10 + 1) + 8 * i)];
      }

      v6 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return v3;
}

- (void)_newDispatchSourceForPid:(int)a1 queue:(NSObject *)a2 .cold.1(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_ERROR, "Unable to create dispatch source for pid %d", v2, 8u);
}

- (void)_newDispatchSourceForPid:(os_log_t)log queue:.cold.2(os_log_t log)
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 67109120;
  v1[1] = 0;
  _os_log_error_impl(&dword_21ED4E000, log, OS_LOG_TYPE_ERROR, "Invalid daemon pid %d", v1, 8u);
}

@end