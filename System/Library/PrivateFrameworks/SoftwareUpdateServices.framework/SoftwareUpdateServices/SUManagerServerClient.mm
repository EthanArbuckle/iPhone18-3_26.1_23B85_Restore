@interface SUManagerServerClient
- (BOOL)hasEntitlement:(id)entitlement;
- (SUManagerClientInterface)proxy;
- (SUManagerServerClient)initWithConnection:(id)connection;
- (id)description;
- (void)_applicationStateChanged:(unsigned __int8)changed isVisible:(BOOL)visible;
- (void)_evaluateForegroundness;
- (void)_evaluateMessagability;
- (void)_logForDebugging:(id)debugging;
- (void)dealloc;
- (void)invalidate;
- (void)monitorClientStateIfNecessary;
- (void)setType:(int)type;
- (void)wakeupIfNecessary;
@end

@implementation SUManagerServerClient

- (SUManagerServerClient)initWithConnection:(id)connection
{
  connectionCopy = connection;
  v43.receiver = self;
  v43.super_class = SUManagerServerClient;
  v6 = [(SUManagerServerClient *)&v43 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, connection);
    v41 = 0u;
    v42 = 0u;
    connection = v7->_connection;
    if (connection)
    {
      [(NSXPCConnection *)connection auditToken];
      v9 = DWORD1(v42);
    }

    else
    {
      v9 = 0;
    }

    v7->_type = 0;
    v7->_pid = v9;
    v7->_isExclusiveClient = 0;
    v10 = MEMORY[0x277D46F48];
    v11 = [MEMORY[0x277CCABB0] numberWithInt:?];
    v40 = 0;
    v12 = [v10 handleForIdentifier:v11 error:&v40];
    v13 = v40;

    if (!v12)
    {
      SULogError(@"[SUManagerServerClient init] Failed to get the process handle for pid:%d error: %@", v14, v15, v16, v17, v18, v19, v20, v7->_pid);
LABEL_16:

      goto LABEL_17;
    }

    bundle = [v12 bundle];
    identifier = [bundle identifier];

    if (identifier)
    {
      identifier = [v12 bundle];
      identifier2 = [identifier identifier];
    }

    else
    {
      identity = [v12 identity];

      if (!identity)
      {
        identifier = v7->_identifier;
        v7->_identifier = @"unknown";
        goto LABEL_12;
      }

      v26 = MEMORY[0x277CCACA8];
      identifier = [v12 identity];
      identifier2 = [v26 stringWithFormat:@"%@", identifier];
    }

    v27 = v7->_identifier;
    v7->_identifier = identifier2;

LABEL_12:
    currentState = [v12 currentState];
    v7->_taskState = [currentState taskState];

    v7->_isApplication = [v12 isApplication];
    procMonitor = v7->_procMonitor;
    v7->_procMonitor = 0;

    if (v7->_isApplication)
    {
      v7->_isMessagable = [SUManagerServerClient _isStateMessagable:v7->_taskState];
      currentState2 = [v12 currentState];
      endowmentNamespaces = [currentState2 endowmentNamespaces];
      v7->_isVisible = [endowmentNamespaces containsObject:@"com.apple.frontboard.visibility"];
    }

    else
    {
      v7->_isMessagable = 1;
      v7->_isVisible = 0;
    }

    v7->_isForeground = 0;
    SULogDebug(@"[SUManagerServerClient init] Initiated\n%@", v30, v31, v32, v33, v34, v35, v36, v7);
    goto LABEL_16;
  }

LABEL_17:

  return v7;
}

- (void)monitorClientStateIfNecessary
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_isApplication)
  {
    v3 = MEMORY[0x277D46F48];
    v4 = [MEMORY[0x277CCABB0] numberWithInt:selfCopy->_pid];
    v29 = 0;
    v5 = [v3 handleForIdentifier:v4 error:&v29];
    v6 = v29;

    if (v5)
    {
      v14 = v6 == 0;
    }

    else
    {
      v14 = 0;
    }

    if (v14)
    {
      v23 = MEMORY[0x277D46F80];
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __54__SUManagerServerClient_monitorClientStateIfNecessary__block_invoke;
      v26[3] = &unk_279CABB98;
      v27 = v5;
      v28 = selfCopy;
      v24 = [v23 monitorWithConfiguration:v26];
      procMonitor = selfCopy->_procMonitor;
      selfCopy->_procMonitor = v24;
    }

    else
    {
      SULogError(@"[SUManagerServerClient monitorClientStateIfNecessary] Failed to get the process handle for pid:%d error: %@", v7, v8, v9, v10, v11, v12, v13, selfCopy->_pid);
    }
  }

  else
  {
    shortDescription = [(SUManagerServerClient *)selfCopy shortDescription];
    SULogInfo(@"[SUManagerServerClient monitorClientStateIfNecessary] %@ is not an application", v16, v17, v18, v19, v20, v21, v22, shortDescription);
  }

  objc_sync_exit(selfCopy);
}

void __54__SUManagerServerClient_monitorClientStateIfNecessary__block_invoke(uint64_t a1, void *a2)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D46FB0];
  v4 = a2;
  v5 = [v3 descriptor];
  [v5 setValues:1];
  v12[0] = @"com.apple.frontboard.visibility";
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  [v5 setEndowmentNamespaces:v6];

  [v4 setStateDescriptor:v5];
  v7 = [MEMORY[0x277D46FA0] predicateMatchingHandle:*(a1 + 32)];
  v11 = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v11 count:1];
  [v4 setPredicates:v8];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __54__SUManagerServerClient_monitorClientStateIfNecessary__block_invoke_2;
  v10[3] = &unk_279CABB70;
  v10[4] = *(a1 + 40);
  [v4 setUpdateHandler:v10];

  v9 = *MEMORY[0x277D85DE8];
}

void __54__SUManagerServerClient_monitorClientStateIfNecessary__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v6 = [v5 state];
  v7 = [v6 taskState];

  v8 = [v5 state];

  v9 = [v8 endowmentNamespaces];

  [*(a1 + 32) _applicationStateChanged:v7 isVisible:{objc_msgSend(v9, "containsObject:", @"com.apple.frontboard.visibility"}];
}

- (void)dealloc
{
  [(SUManagerServerClient *)self invalidate];
  v3.receiver = self;
  v3.super_class = SUManagerServerClient;
  [(SUManagerServerClient *)&v3 dealloc];
}

- (void)invalidate
{
  obj = self;
  objc_sync_enter(obj);
  procMonitor = obj->_procMonitor;
  if (procMonitor)
  {
    [(RBSProcessMonitor *)procMonitor invalidate];
    v3 = obj->_procMonitor;
    obj->_procMonitor = 0;
  }

  [(NSXPCConnection *)obj->_connection setInterruptionHandler:0];
  [(NSXPCConnection *)obj->_connection setInvalidationHandler:0];
  [(NSXPCConnection *)obj->_connection invalidate];
  connection = obj->_connection;
  obj->_connection = 0;

  objc_sync_exit(obj);
}

- (SUManagerClientInterface)proxy
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  remoteObjectProxy = [(NSXPCConnection *)selfCopy->_connection remoteObjectProxy];
  objc_sync_exit(selfCopy);

  return remoteObjectProxy;
}

- (void)setType:(int)type
{
  obj = self;
  objc_sync_enter(obj);
  if (obj->_type != type)
  {
    obj->_type = type;
    [(SUManagerServerClient *)obj _evaluateForegroundness];
  }

  objc_sync_exit(obj);
}

- (void)wakeupIfNecessary
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_isApplication && !selfCopy->_isMessagable)
  {
    shortDescription = [(SUManagerServerClient *)selfCopy shortDescription];
    SULogDebug(@"Trying to waking up %@...", v4, v5, v6, v7, v8, v9, v10, shortDescription);

    pid = selfCopy->_pid;
    v12 = SBSProcessAssertionCreateForPID();
    if (v12)
    {
      v13 = dispatch_time(0, 5000000000);
      v14 = dispatch_get_global_queue(0, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __42__SUManagerServerClient_wakeupIfNecessary__block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0l;
      block[4] = v12;
      dispatch_after(v13, v14, block);
    }

    else
    {
      shortDescription2 = [(SUManagerServerClient *)selfCopy shortDescription];
      SULogError(@"Unable to wakeup %@", v16, v17, v18, v19, v20, v21, v22, shortDescription2);
    }
  }

  objc_sync_exit(selfCopy);
}

- (BOOL)hasEntitlement:(id)entitlement
{
  entitlementCopy = entitlement;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(NSXPCConnection *)selfCopy->_connection valueForEntitlement:entitlementCopy];
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    bOOLValue = [v6 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  objc_sync_exit(selfCopy);
  return bOOLValue;
}

- (void)_evaluateMessagability
{
  obj = self;
  objc_sync_enter(obj);
  isMessagable = [(SUManagerServerClient *)obj isMessagable];
  v3 = [SUManagerServerClient _isStateMessagable:obj->_taskState];
  if (isMessagable != v3)
  {
    obj->_isMessagable = v3;
    shortDescription = [(SUManagerServerClient *)obj shortDescription];
    obj->_isMessagable;
    SULogDebug(@"%@ - messagability changed: isMessagable? %@", v5, v6, v7, v8, v9, v10, v11, shortDescription);

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"SUClientMessagabilityChangedNotification" object:obj];
  }

  objc_sync_exit(obj);
}

- (void)_evaluateForegroundness
{
  obj = self;
  objc_sync_enter(obj);
  isForeground = [(SUManagerServerClient *)obj isForeground];
  if (![SUManagerServerClient _isStateForeground:obj->_taskState visible:obj->_isVisible])
  {
    v3 = obj;
    if ((isForeground & 1) == 0)
    {
      goto LABEL_7;
    }

    LOBYTE(v4) = 0;
    goto LABEL_6;
  }

  v3 = obj;
  v4 = obj->_type == 1;
  if (isForeground != v4)
  {
LABEL_6:
    v3->_isForeground = v4;
    shortDescription = [(SUManagerServerClient *)v3 shortDescription];
    obj->_isMessagable;
    SULogDebug(@"%@ - foregroundness changed: isForeground? %@", v6, v7, v8, v9, v10, v11, v12, shortDescription);

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"SUClientForegroundnessChangedNotification" object:obj];

    v3 = obj;
  }

LABEL_7:
  objc_sync_exit(v3);
}

- (void)_applicationStateChanged:(unsigned __int8)changed isVisible:(BOOL)visible
{
  obj = self;
  objc_sync_enter(obj);
  obj->_taskState = changed;
  obj->_isVisible = visible;
  [(SUManagerServerClient *)obj _evaluateMessagability];
  [(SUManagerServerClient *)obj _evaluateForegroundness];
  [(SUManagerServerClient *)obj _logForDebugging:@"SUManagerServerClient _applicationStateChanged"];
  objc_sync_exit(obj);
}

- (void)_logForDebugging:(id)debugging
{
  debuggingCopy = debugging;
  shortDescription = [(SUManagerServerClient *)self shortDescription];
  isMessagable = self->_isMessagable;
  isVisible = self->_isVisible;
  taskState = self->_taskState;
  isApplication = self->_isApplication;
  isForeground = self->_isForeground;
  pid = self->_pid;
  SULogDebug(@"[%@] %@ foreground:%d _pid:%d  _taskState:%u _isApplication:%d _isMessagable:%d _isVisible:%d", shortDescription, v5, v6, v7, v8, v9, v10, debuggingCopy);
}

- (id)description
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = MEMORY[0x277CCACA8];
  v4 = SUStringFromClientType([(SUManagerServerClient *)selfCopy type]);
  v5 = [(SUManagerServerClient *)selfCopy pid];
  identifier = [(SUManagerServerClient *)selfCopy identifier];
  if ([(SUManagerServerClient *)selfCopy isApplication])
  {
    v7 = @"Y";
  }

  else
  {
    v7 = @"N";
  }

  if ([(SUManagerServerClient *)selfCopy isMessagable])
  {
    v8 = @"Y";
  }

  else
  {
    v8 = @"N";
  }

  isForeground = [(SUManagerServerClient *)selfCopy isForeground];
  isExclusiveClient = [(SUManagerServerClient *)selfCopy isExclusiveClient];
  if (isForeground)
  {
    v11 = @"Y";
  }

  else
  {
    v11 = @"N";
  }

  if (isExclusiveClient)
  {
    v12 = @"Y";
  }

  else
  {
    v12 = @"N";
  }

  v13 = [v3 stringWithFormat:@"SUManagerServerClient <%p>:\n\ttype: %@\n\tpid: %d\n\tidentifier: %@\n\tapplication? %@\n\tmessagable? %@\n\tforeground? %@\n\tisExclusiveClient? %@", selfCopy, v4, v5, identifier, v7, v8, v11, v12];

  objc_sync_exit(selfCopy);

  return v13;
}

@end