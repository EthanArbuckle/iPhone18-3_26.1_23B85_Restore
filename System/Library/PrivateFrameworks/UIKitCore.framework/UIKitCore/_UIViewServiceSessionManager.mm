@interface _UIViewServiceSessionManager
+ (id)_domainMachName;
+ (id)bundleIdentifierForConnection:(id)connection auditToken:(id *)token;
+ (void)_ensureSessionManagerWithDelegate:(id)delegate asPlugIn:(BOOL)in;
+ (void)startViewServiceSessionManagerAsPlugin:(BOOL)plugin;
+ (void)startViewServiceSessionWithDelegate:(id)delegate;
- (BOOL)_hasActiveSessions;
- (BOOL)requiresExtensionContext;
- (NSString)containingViewControllerClassName;
- (NSString)debugDescription;
- (NSString)mainStoryboardName;
- (NSString)viewControllerClassName;
- (_UIViewServiceSessionManager)init;
- (id)_initWithDelegate:(id)delegate asPlugIn:(BOOL)in;
- (id)firstAuxiliaryConnectionPassingTest:(id)test;
- (id)succinctDescription;
- (void)_start;
- (void)_startOrStopSystemsForBackgroundRunning;
- (void)appendDescriptionToStream:(id)stream;
- (void)configureConnection:(id)connection withContext:(id)context;
- (void)configureLegacySessionForConnection:(id)connection;
- (void)dealloc;
- (void)didCreateServiceViewController:(id)controller contextToken:(id)token;
- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context;
- (void)queuedConnectionInvalidated:(id)invalidated;
@end

@implementation _UIViewServiceSessionManager

- (void)_start
{
  v9 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  if (!self->_lock_listener)
  {
    +[_UIViewServiceConfiguration registerDomains];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __38___UIViewServiceSessionManager__start__block_invoke;
    v6[3] = &unk_1E711FFF0;
    v6[4] = self;
    v3 = [MEMORY[0x1E698F4B8] listenerWithConfigurator:v6];
    objc_storeStrong(&self->_lock_listener, v3);
    [v3 activate];
    v4 = *(__UILogGetCategoryCachedImpl("ViewServiceSessionManager", &_start___s_category) + 8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      machName = self->_machName;
      *buf = 138543362;
      v8 = machName;
      _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_DEFAULT, "Starting connection listener with name %{public}@", buf, 0xCu);
    }

    +[_UIViewServiceConfiguration activateDomains];
  }

  os_unfair_lock_unlock(&self->_lock);
}

+ (id)_domainMachName
{
  v22 = *MEMORY[0x1E69E9840];
  if (!__viewServiceSessionManager)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"must instantiate the session manager before querying it about its type"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v7 = NSStringFromSelector(a2);
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = 138544642;
      v11 = v7;
      v12 = 2114;
      v13 = v9;
      v14 = 2048;
      selfCopy = self;
      v16 = 2114;
      v17 = @"UIViewServiceSessionManager.m";
      v18 = 1024;
      v19 = 139;
      v20 = 2114;
      v21 = v6;
      _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v10, 0x3Au);
    }

    [v6 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x188BEAEB0);
  }

  v2 = *(__viewServiceSessionManager + 8);

  return v2;
}

- (_UIViewServiceSessionManager)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D920];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v3 raise:v4 format:{@"You may not directly init a %@", v6}];

  return 0;
}

+ (void)_ensureSessionManagerWithDelegate:(id)delegate asPlugIn:(BOOL)in
{
  delegateCopy = delegate;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __75___UIViewServiceSessionManager__ensureSessionManagerWithDelegate_asPlugIn___block_invoke;
  v8[3] = &unk_1E70F35E0;
  v9 = delegateCopy;
  inCopy = in;
  v6 = _ensureSessionManagerWithDelegate_asPlugIn__onceToken;
  v7 = delegateCopy;
  if (v6 != -1)
  {
    dispatch_once(&_ensureSessionManagerWithDelegate_asPlugIn__onceToken, v8);
  }
}

+ (void)startViewServiceSessionManagerAsPlugin:(BOOL)plugin
{
  pluginCopy = plugin;
  v29 = *MEMORY[0x1E69E9840];
  [_UIViewServiceSessionManager _ensureSessionManagerWithDelegate:0 asPlugIn:plugin];
  v6 = __viewServiceSessionManager;
  v7 = *(__viewServiceSessionManager + 48);
  if (v7)
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"mismatching calls to _UIViewServiceSessionManager initialization : asking for asPlugIn=%i but already initialized with a delegate : delegate = %@", pluginCopy, v7];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = NSStringFromSelector(a2);
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      *buf = 138544642;
      v18 = v10;
      v19 = 2114;
      v20 = v12;
      v21 = 2048;
      selfCopy2 = self;
      v23 = 2114;
      v24 = @"UIViewServiceSessionManager.m";
      v25 = 1024;
      v26 = 119;
      v27 = 2114;
      v28 = v9;
      _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v9 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x18A2A4874);
  }

  v8 = *(__viewServiceSessionManager + 36);
  if (v8 != pluginCopy)
  {
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"mismatching calls to _UIViewServiceSessionManager initialization : asking for asPlugIn=%i but already initialized asPlugIn=%i", pluginCopy, v8];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v14 = NSStringFromSelector(a2);
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      *buf = 138544642;
      v18 = v14;
      v19 = 2114;
      v20 = v16;
      v21 = 2048;
      selfCopy2 = self;
      v23 = 2114;
      v24 = @"UIViewServiceSessionManager.m";
      v25 = 1024;
      v26 = 120;
      v27 = 2114;
      v28 = v13;
      _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v13 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x18A2A4964);
  }

  [v6 _start];
}

+ (void)startViewServiceSessionWithDelegate:(id)delegate
{
  v36 = *MEMORY[0x1E69E9840];
  delegateCopy = delegate;
  if (!delegateCopy)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"delegate != ((void*)0)"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = NSStringFromSelector(a2);
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      *buf = 138544642;
      v25 = v8;
      v26 = 2114;
      v27 = v10;
      v28 = 2048;
      selfCopy4 = self;
      v30 = 2114;
      v31 = @"UIViewServiceSessionManager.m";
      v32 = 1024;
      v33 = 125;
      v34 = 2114;
      v35 = v7;
      _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v7 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x18A2A4B1CLL);
  }

  v23 = delegateCopy;
  [_UIViewServiceSessionManager _ensureSessionManagerWithDelegate:delegateCopy asPlugIn:0];
  v6 = *(__viewServiceSessionManager + 48);
  if (!v6)
  {
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"mismatching calls to _UIViewServiceSessionManager initialization : asking for delegate but already initialized without a delegate : delegate = %@", v23];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v12 = NSStringFromSelector(a2);
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      *buf = 138544642;
      v25 = v12;
      v26 = 2114;
      v27 = v14;
      v28 = 2048;
      selfCopy4 = self;
      v30 = 2114;
      v31 = @"UIViewServiceSessionManager.m";
      v32 = 1024;
      v33 = 127;
      v34 = 2114;
      v35 = v11;
      _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v11 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x18A2A4C10);
  }

  if (*(__viewServiceSessionManager + 36))
  {
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unexpected _UIViewServiceSessionManager initialization state : asPlugIn must be NO if initialized with delegate : delegate = %@", *(__viewServiceSessionManager + 48)];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v16 = NSStringFromSelector(a2);
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      *buf = 138544642;
      v25 = v16;
      v26 = 2114;
      v27 = v18;
      v28 = 2048;
      selfCopy4 = self;
      v30 = 2114;
      v31 = @"UIViewServiceSessionManager.m";
      v32 = 1024;
      v33 = 128;
      v34 = 2114;
      v35 = v15;
      _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v15 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x18A2A4D00);
  }

  if (v6 != v23)
  {
    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"mismatching calls to _UIViewServiceSessionManager initialization : asking for delegate but already initialized with a different delegate : new = %@ existing = %@", v23, v6];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v20 = NSStringFromSelector(a2);
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      *buf = 138544642;
      v25 = v20;
      v26 = 2114;
      v27 = v22;
      v28 = 2048;
      selfCopy4 = self;
      v30 = 2114;
      v31 = @"UIViewServiceSessionManager.m";
      v32 = 1024;
      v33 = 129;
      v34 = 2114;
      v35 = v19;
      _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v19 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x18A2A4DF0);
  }

  [__viewServiceSessionManager _start];
}

- (void)dealloc
{
  [(BSInvalidatable *)self->_lock_listener invalidate];
  v3.receiver = self;
  v3.super_class = _UIViewServiceSessionManager;
  [(_UIViewServiceSessionManager *)&v3 dealloc];
}

- (id)firstAuxiliaryConnectionPassingTest:(id)test
{
  v21 = *MEMORY[0x1E69E9840];
  testCopy = test;
  os_unfair_lock_lock(&self->_lock);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_lock_queuedAuxiliaryConnections;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = *v17;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        context = [v9 context];
        v11 = testCopy[2](testCopy, context);

        if (v11)
        {
          v6 = v9;
          [(NSMutableArray *)self->_lock_queuedAuxiliaryConnections removeObject:v6];
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  os_unfair_lock_unlock(&self->_lock);
  connection = [v6 connection];

  if (connection)
  {
    connection2 = [v6 connection];
    [connection2 setInvalidationHandler:0];

    connection3 = [v6 connection];
    [connection3 setInterruptionHandler:0];
  }

  return v6;
}

+ (id)bundleIdentifierForConnection:(id)connection auditToken:(id *)token
{
  connectionCopy = connection;
  if (_UIApplicationIsKeyboardExtension())
  {
    bs_fetchBundleIdentifierFromXPCConnection = @"<null>";
  }

  else
  {
    bs_fetchBundleIdentifierFromXPCConnection = [connectionCopy bs_fetchBundleIdentifierFromXPCConnection];
    if (!bs_fetchBundleIdentifierFromXPCConnection)
    {
      CPCopyBundleIdentifierAndTeamFromAuditToken();
      bs_fetchBundleIdentifierFromXPCConnection = 0;
    }
  }

  return bs_fetchBundleIdentifierFromXPCConnection;
}

- (id)_initWithDelegate:(id)delegate asPlugIn:(BOOL)in
{
  inCopy = in;
  delegateCopy = delegate;
  v18.receiver = self;
  v18.super_class = _UIViewServiceSessionManager;
  v8 = [(_UIViewServiceSessionManager *)&v18 init];
  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    lock_sessions = v8->_lock_sessions;
    v8->_lock_sessions = v9;

    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    lock_queuedAuxiliaryConnections = v8->_lock_queuedAuxiliaryConnections;
    v8->_lock_queuedAuxiliaryConnections = v11;

    objc_storeStrong(&v8->_delegate, delegate);
    v8->_asPlugIn = inCopy;
    delegate = v8->_delegate;
    if (delegate)
    {
      if (([(_UIViewServiceSessionManagerDelegate *)delegate isExtensionViewServiceSessionManager:v8]& 1) != 0)
      {
LABEL_4:
        v14 = _UIMainBundleIdentifier();
        v15 = [v14 stringByAppendingString:@".viewservice"];
LABEL_7:
        machName = v8->_machName;
        v8->_machName = v15;

        goto LABEL_8;
      }
    }

    else if (inCopy)
    {
      goto LABEL_4;
    }

    v14 = _UIMainBundleIdentifier();
    v15 = RBSAppViewServiceMachServiceName();
    goto LABEL_7;
  }

LABEL_8:

  return v8;
}

- (BOOL)_hasActiveSessions
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableArray *)self->_lock_sessions count]!= 0;
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (void)configureLegacySessionForConnection:(id)connection
{
  v23 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  v5 = [_UIViewServiceLegacyClientSession sessionWithConnection:connectionCopy manager:self];
  v6 = *(__UILogGetCategoryCachedImpl("ViewServiceSessionManager", &configureLegacySessionForConnection____s_category) + 8);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    machName = self->_machName;
    v8 = v6;
    processIdentifier = [connectionCopy processIdentifier];
    uniqueIdentifier = [v5 uniqueIdentifier];
    *buf = 138543874;
    v18 = machName;
    v19 = 1026;
    v20 = processIdentifier;
    v21 = 2114;
    v22 = uniqueIdentifier;
    _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_DEFAULT, "Configuring connection on service %{public}@ to host pid %{public}d for session %{public}@", buf, 0x1Cu);
  }

  os_unfair_lock_lock(&self->_lock);
  [(NSMutableArray *)self->_lock_sessions addObject:v5];
  os_unfair_lock_unlock(&self->_lock);
  [(_UIViewServiceSessionManager *)self _startOrStopSystemsForBackgroundRunning];
  objc_initWeak(buf, v5);
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __68___UIViewServiceSessionManager_configureLegacySessionForConnection___block_invoke;
  v14 = &unk_1E70F2F80;
  objc_copyWeak(&v16, buf);
  selfCopy = self;
  [v5 setTerminationHandler:&v11];
  [connectionCopy activate];
  objc_destroyWeak(&v16);
  objc_destroyWeak(buf);
}

- (void)configureConnection:(id)connection withContext:(id)context
{
  v34 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  contextCopy = context;
  v9 = [contextCopy decodeObjectOfClass:objc_opt_class() forKey:0x1EFB82510];
  if (v9)
  {
    if ([(_UIViewServiceSessionManager *)self _hasActiveSessions])
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Mixing scene hosting with legacy sessions is not supported"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v13 = NSStringFromSelector(a2);
        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        *buf = 138544642;
        v23 = v13;
        v24 = 2114;
        v25 = v15;
        v26 = 2048;
        selfCopy = self;
        v28 = 2114;
        v29 = @"UIViewServiceSessionManager.m";
        v30 = 1024;
        v31 = 274;
        v32 = 2114;
        v33 = v12;
        _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v16 = v12;
      [v12 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x18A2A57D4);
    }

    v10 = [[_UIViewServiceSessionManagerQueuedAuxiliaryConnection alloc] initWithConnection:connectionCopy context:contextCopy];
    objc_initWeak(&location, v10);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __64___UIViewServiceSessionManager_configureConnection_withContext___block_invoke;
    v19[3] = &unk_1E70F5A28;
    objc_copyWeak(&v20, &location);
    [connectionCopy setInterruptionHandler:v19];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __64___UIViewServiceSessionManager_configureConnection_withContext___block_invoke_2;
    v17[3] = &unk_1E70F5A28;
    objc_copyWeak(&v18, &location);
    [connectionCopy setInvalidationHandler:v17];
    os_unfair_lock_lock(&self->_lock);
    [(NSMutableArray *)self->_lock_queuedAuxiliaryConnections addObject:v10];
    os_unfair_lock_unlock(&self->_lock);
    [connectionCopy activate];
    v11 = *(__UILogGetCategoryCachedImpl("ViewServiceSessionManager", &configureConnection_withContext____s_category) + 8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v23 = connectionCopy;
      v24 = 2114;
      v25 = v9;
      _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_DEFAULT, "Auxiliary connection [%{public}@] activated targeting scene %{public}@", buf, 0x16u);
    }

    objc_destroyWeak(&v18);
    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }

  else
  {
    [(_UIViewServiceSessionManager *)self configureLegacySessionForConnection:connectionCopy];
  }
}

- (void)queuedConnectionInvalidated:(id)invalidated
{
  v10 = *MEMORY[0x1E69E9840];
  invalidatedCopy = invalidated;
  os_unfair_lock_lock(&self->_lock);
  v5 = *(__UILogGetCategoryCachedImpl("ViewServiceSessionManager", &queuedConnectionInvalidated____s_category) + 8);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    connection = [invalidatedCopy connection];
    v8 = 138543362;
    v9 = connection;
    _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_DEFAULT, "Auxiliary connection %{public}@ has been abandoned", &v8, 0xCu);
  }

  [invalidatedCopy setConnection:0];
  if ([(NSMutableArray *)self->_lock_queuedAuxiliaryConnections count]>= 3)
  {
    [(NSMutableArray *)self->_lock_queuedAuxiliaryConnections removeObjectAtIndex:0];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context
{
  v44 = *MEMORY[0x1E69E9840];
  listenerCopy = listener;
  connectionCopy = connection;
  contextCopy = context;
  service = [connectionCopy service];
  v13 = [service isEqualToString:8316790000];

  if (!v13)
  {
    v24 = *(__UILogGetCategoryCachedImpl("ViewServiceSessionManager", &qword_1ED4A2960) + 8);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = v24;
      service2 = [connectionCopy service];
      *buf = 138543362;
      v33 = service2;
      _os_log_impl(&dword_188A29000, v25, OS_LOG_TYPE_DEFAULT, "rejecting incoming connection for unknown service %{public}@", buf, 0xCu);
    }

    goto LABEL_10;
  }

  v14 = [contextCopy decodeInt64ForKey:0x1EFB155F0];
  if ((v14 - 1) > 0x7FFFFFFE || v14 != getpid())
  {
    v27 = *(__UILogGetCategoryCachedImpl("ViewServiceSessionManager", &_MergedGlobals_1366) + 8);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v33 = v14;
      _os_log_impl(&dword_188A29000, v27, OS_LOG_TYPE_DEFAULT, "rejecting incoming connection for targetPID mismatch : expected=%lli", buf, 0xCu);
    }

LABEL_10:
    [connectionCopy invalidate];
    goto LABEL_11;
  }

  v15 = [connectionCopy extractNSXPCConnectionWithViewServiceConfigurator:&__block_literal_global_666];
  if (!v15)
  {
    v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"newConnection"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v29 = NSStringFromSelector(a2);
      v30 = objc_opt_class();
      v31 = NSStringFromClass(v30);
      *buf = 138544642;
      v33 = v29;
      v34 = 2114;
      v35 = v31;
      v36 = 2048;
      selfCopy = self;
      v38 = 2114;
      v39 = @"UIViewServiceSessionManager.m";
      v40 = 1024;
      v41 = 316;
      v42 = 2114;
      v43 = v28;
      _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v28 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x18A2A5D94);
  }

  v16 = v15;
  _workspace = [UIApp _workspace];
  machQueue = [_workspace machQueue];
  queue = [machQueue queue];
  [v16 _setQueue:queue];

  v20 = [_UIViewServiceNSXPCConnectionDelegate alloc];
  _workspace2 = [UIApp _workspace];
  callOutQueue = [_workspace2 callOutQueue];
  v23 = [(_UIViewServiceNSXPCConnectionDelegate *)v20 initWithCallOutQueue:callOutQueue replyHandler:0];

  [v16 setDelegate:v23];
  [(_UIViewServiceNSXPCConnectionDelegate *)v23 stronglyRetainForConnection:v16];
  [(_UIViewServiceSessionManager *)self configureConnection:v16 withContext:contextCopy];

LABEL_11:
}

- (void)_startOrStopSystemsForBackgroundRunning
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71___UIViewServiceSessionManager__startOrStopSystemsForBackgroundRunning__block_invoke;
  block[3] = &unk_1E70F3590;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (BOOL)requiresExtensionContext
{
  delegate = [(_UIViewServiceSessionManager *)self delegate];

  if (!delegate)
  {
    return 1;
  }

  delegate2 = [(_UIViewServiceSessionManager *)self delegate];
  v5 = [delegate2 requiresExtensionContextForViewServiceSessionManager:self];

  return v5;
}

- (NSString)viewControllerClassName
{
  delegate = [(_UIViewServiceSessionManager *)self delegate];

  if (delegate)
  {
    delegate2 = [(_UIViewServiceSessionManager *)self delegate];
    v5 = [delegate2 viewControllerClassNameForViewServiceSessionManager:self];
LABEL_4:
    v7 = v5;
    goto LABEL_5;
  }

  v6 = [-[objc_class performSelector:](NSClassFromString(&cfstr_UikitPksubsyst.isa) performSelector:{sel_sharedInstance), "valueForKey:", @"infoDictionary"}];
  delegate2 = [v6 objectForKeyedSubscript:@"NSExtension"];

  v5 = [delegate2 objectForKeyedSubscript:@"NSExtensionPrincipalClass"];
  if (v5)
  {
    goto LABEL_4;
  }

  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  infoDictionary = [mainBundle infoDictionary];
  v7 = [infoDictionary objectForKeyedSubscript:@"NSExtensionPrincipalClass"];

LABEL_5:

  return v7;
}

- (NSString)containingViewControllerClassName
{
  delegate = [(_UIViewServiceSessionManager *)self delegate];

  if (delegate)
  {
    delegate2 = [(_UIViewServiceSessionManager *)self delegate];
    [delegate2 containingViewControllerClassNameForViewServiceSessionManager:self];
  }

  else
  {
    v5 = [-[objc_class performSelector:](NSClassFromString(&cfstr_UikitPksubsyst.isa) performSelector:{sel_sharedInstance), "valueForKey:", @"infoDictionary"}];
    delegate2 = [v5 objectForKeyedSubscript:@"NSExtension"];

    [delegate2 objectForKeyedSubscript:@"NSExtensionContainingViewControllerClass"];
  }
  v6 = ;

  return v6;
}

- (NSString)mainStoryboardName
{
  delegate = [(_UIViewServiceSessionManager *)self delegate];

  if (delegate)
  {
    delegate2 = [(_UIViewServiceSessionManager *)self delegate];
    [delegate2 mainStoryboardNameForViewServiceSessionManager:self];
  }

  else
  {
    v5 = [-[objc_class performSelector:](NSClassFromString(&cfstr_UikitPksubsyst.isa) performSelector:{sel_sharedInstance), "valueForKey:", @"infoDictionary"}];
    delegate2 = [v5 objectForKeyedSubscript:@"NSExtension"];

    [delegate2 objectForKeyedSubscript:@"NSExtensionMainStoryboard"];
  }
  v6 = ;

  return v6;
}

- (void)didCreateServiceViewController:(id)controller contextToken:(id)token
{
  tokenCopy = token;
  controllerCopy = controller;
  delegate = [(_UIViewServiceSessionManager *)self delegate];
  [delegate viewServiceSessionManager:self didCreateViewController:controllerCopy contextToken:tokenCopy];
}

- (void)appendDescriptionToStream:(id)stream
{
  streamCopy = stream;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __58___UIViewServiceSessionManager_appendDescriptionToStream___block_invoke;
  v11[3] = &unk_1E70F35B8;
  v5 = streamCopy;
  v12 = v5;
  selfCopy = self;
  [v5 appendProem:self block:v11];
  style = [v5 style];
  verbosity = [style verbosity];

  if (verbosity != 2)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __58___UIViewServiceSessionManager_appendDescriptionToStream___block_invoke_2;
    v8[3] = &unk_1E70F35B8;
    v9 = v5;
    selfCopy2 = self;
    [v9 appendBodySectionWithName:0 block:v8];
  }
}

- (id)succinctDescription
{
  v3 = MEMORY[0x1E698E688];
  succinctStyle = [MEMORY[0x1E698E690] succinctStyle];
  v5 = [v3 descriptionForRootObject:self withStyle:succinctStyle];

  return v5;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E698E688];
  debugStyle = [MEMORY[0x1E698E690] debugStyle];
  v5 = [v3 descriptionForRootObject:self withStyle:debugStyle];

  return v5;
}

@end