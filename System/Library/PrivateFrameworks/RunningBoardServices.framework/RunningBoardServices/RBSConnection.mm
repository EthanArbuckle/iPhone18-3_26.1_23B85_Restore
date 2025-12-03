@interface RBSConnection
+ (id)connectionQueue;
+ (id)handshakeQueue;
+ (id)sharedInstance;
+ (id)testConnectionWithConnection:(id)connection;
- (BOOL)executeTerminateRequest:(id)request assertion:(id *)assertion error:(id *)error;
- (BOOL)invalidateAssertion:(id)assertion error:(id *)error;
- (BOOL)invalidateAssertionWithIdentifier:(id)identifier error:(id *)error;
- (BOOL)isIdentityAnAngel:(id)angel withError:(id *)error;
- (BOOL)saveEndowment:(id)endowment withError:(id *)error;
- (BOOL)subscribeProcessStateMonitor:(id)monitor configuration:(id)configuration error:(id *)error;
- (RBSConnection)init;
- (id)_connection;
- (id)_initWithConnection:(id)connection;
- (id)_lock_connect;
- (id)acquireAssertion:(id)assertion error:(id *)error;
- (id)busyExtensionInstancesFromSet:(id)set error:(id *)error;
- (id)captureStateForSubsystem:(id)subsystem error:(id *)error;
- (id)executeLaunchRequest:(id)request;
- (id)handle;
- (id)handleForKey:(id)key;
- (id)handleForPredicate:(id)predicate error:(id *)error;
- (id)hostProcessForInstance:(id)instance error:(id *)error;
- (id)identifiersForStateCaptureSubsystems:(id *)subsystems;
- (id)identity;
- (id)infoPlistResultForInstance:(id)instance forKeys:(id)keys error:(id *)error;
- (id)lastExitContextForInstance:(id)instance error:(id *)error;
- (id)limitationsForInstance:(id)instance error:(id *)error;
- (id)managedEndpointByLaunchIdentifier;
- (id)portForIdentifier:(id)identifier;
- (id)preventLaunchPredicatesWithError:(id *)error;
- (id)processName:(id)name;
- (id)statesForPredicate:(id)predicate withDescriptor:(id)descriptor error:(id *)error;
- (uint64_t)cleanOutStateIfNeeded;
- (void)_disconnect;
- (void)_handleDaemonDidStart;
- (void)_handleMessage:(uint64_t)message;
- (void)_handshake;
- (void)_lock_announceLostInheritances;
- (void)_lock_setConnection:(uint64_t)connection;
- (void)_subscribeToProcessDeath:(void *)death handler:;
- (void)async_assertionWillInvalidate:(id)invalidate;
- (void)async_assertionsDidInvalidate:(id)invalidate withError:(id)error;
- (void)async_didChangeInheritances:(id)inheritances completion:(id)completion;
- (void)async_observedPreventLaunchPredicatesUpdate:(id)update completion:(id)completion;
- (void)async_observedProcessExitEvents:(id)events completion:(id)completion;
- (void)async_observedProcessStatesDidChange:(id)change completion:(id)completion;
- (void)async_processDidExit:(id)exit withContext:(id)context;
- (void)async_willExpireAssertionsSoon;
- (void)dealloc;
- (void)intendToExit:(id)exit withStatus:(id)status;
- (void)observeProcessAssertionsExpirationWarningWithBlock:(uint64_t)block;
- (void)registerServiceDelegate:(uint64_t)delegate;
- (void)reset;
- (void)subscribeToProcessDeath:(id)death handler:(id)handler;
- (void)unsubscribeProcessStateMonitor:(id)monitor configuration:(id)configuration;
@end

@implementation RBSConnection

- (id)_connection
{
  if (self)
  {
    dispatch_assert_queue_not_V2(*(self + 56));
    os_unfair_lock_lock((self + 40));
    _lock_connect = [(RBSConnection *)self _lock_connect];
    os_unfair_lock_unlock((self + 40));
    dispatch_async_and_wait(*(self + 64), &__block_literal_global_228);
  }

  else
  {
    _lock_connect = 0;
  }

  return _lock_connect;
}

- (id)_lock_connect
{
  v17 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v2 = OUTLINED_FUNCTION_17(self);
    os_unfair_lock_assert_owner(v2);
    v3 = *(v1 + 8);
    if (v3)
    {
LABEL_5:
      self = v3;
      goto LABEL_6;
    }

    if (*(v1 + 144) == 3)
    {
      v3 = 0;
      goto LABEL_5;
    }

    CanAccessMachService = RBSSandboxCanAccessMachService();
    v7 = rbs_connection_log();
    v8 = v7;
    if (CanAccessMachService)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 138543362;
        v16 = @"com.apple.runningboard";
        OUTLINED_FUNCTION_16();
        _os_log_impl(v9, v10, v11, v12, v13, 0xCu);
      }

      mach_service = xpc_connection_create_mach_service([@"com.apple.runningboard" UTF8String], *(v1 + 56), 2uLL);
      [(RBSConnection *)v1 _lock_setConnection:?];

      v3 = *(v1 + 8);
      goto LABEL_5;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v15) = 0;
      _os_log_error_impl(&dword_18E8AD000, v8, OS_LOG_TYPE_ERROR, "The sandbox in this process does not allow access to RunningBoard.", &v15, 2u);
    }

    self = 0;
  }

LABEL_6:
  v4 = *MEMORY[0x1E69E9840];

  return self;
}

- (id)identity
{
  if (self)
  {
    handle = [(RBSConnection *)self handle];
    identity = [handle identity];
  }

  else
  {
    identity = 0;
  }

  return identity;
}

- (id)handle
{
  if (self)
  {
    v10 = 0;
    v11 = &v10;
    v1 = OUTLINED_FUNCTION_4(self);
    OUTLINED_FUNCTION_21(v1, v2, v5, 3221225472, v6, v7, v8, v9);
    v3 = v11[5];
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void __23__RBSConnection_handle__block_invoke(uint64_t a1)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(*(a1 + 32) + 24));
  if (!*(*(*(a1 + 40) + 8) + 40) && *(*(a1 + 32) + 144) == 3)
  {
    v2 = [MEMORY[0x1E696AAE8] mainBundle];
    v7 = [v2 executablePath];

    v3 = [RBSProcessIdentity identityForExecutablePath:v7 pid:getpid() auid:0];
    v4 = [[RBSProcessHandle alloc] initWithIdentity:v3];
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[RBSConnection sharedInstance];
  }

  v3 = sharedInstance___sharedInstance_0;

  return v3;
}

- (uint64_t)cleanOutStateIfNeeded
{
  if (result)
  {
    OUTLINED_FUNCTION_6_0();
    v4 = 3221225472;
    v5 = __38__RBSConnection_cleanOutStateIfNeeded__block_invoke;
    v6 = &unk_1E7276440;
    v7 = v1;
    return [v2 performBackgroundWorkWithServiceClass:9 block:v3];
  }

  return result;
}

void __38__RBSConnection_cleanOutStateIfNeeded__block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock((*(a1 + 32) + 40));
  v2 = [MEMORY[0x1E695DFA8] set];
  v3 = [*(*(a1 + 32) + 80) allObjects];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v19;
    do
    {
      v7 = 0;
      do
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v18 + 1) + 8 * v7) configuration];
        v9 = v8;
        if (v8)
        {
          v10 = [v8 predicates];
          [v2 addObjectsFromArray:v10];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v5);
  }

  v11 = [*(*(a1 + 32) + 88) copy];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __38__RBSConnection_cleanOutStateIfNeeded__block_invoke_2;
  v15[3] = &unk_1E7276590;
  v12 = *(a1 + 32);
  v16 = v2;
  v17 = v12;
  v13 = v2;
  [v11 enumerateKeysAndObjectsUsingBlock:v15];

  os_unfair_lock_unlock((*(a1 + 32) + 40));
  v14 = *MEMORY[0x1E69E9840];
}

void __38__RBSConnection_cleanOutStateIfNeeded__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = *(a1 + 32);
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    while (2)
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * v11);
        v13 = [v6 process];
        LOBYTE(v12) = [v12 matchesProcess:v13];

        if (v12)
        {

          goto LABEL_11;
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  [*(*(a1 + 40) + 88) removeObjectForKey:v5];
LABEL_11:

  v14 = *MEMORY[0x1E69E9840];
}

uint64_t __31__RBSConnection_sharedInstance__block_invoke()
{
  sharedInstance___sharedInstance_0 = [[RBSConnection alloc] _initWithConnection:?];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)handshakeQueue
{
  if (handshakeQueue_onceToken != -1)
  {
    +[RBSConnection handshakeQueue];
  }

  v3 = handshakeQueue_queue;

  return v3;
}

void __31__RBSConnection_handshakeQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.runningboardservices.connection.outgoing", v2);
  v1 = handshakeQueue_queue;
  handshakeQueue_queue = v0;
}

void __32__RBSConnection_connectionQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.runningboardservices.connection.incoming", v2);
  v1 = connectionQueue_queue;
  connectionQueue_queue = v0;
}

+ (id)connectionQueue
{
  if (connectionQueue_onceToken != -1)
  {
    +[RBSConnection connectionQueue];
  }

  v3 = connectionQueue_queue;

  return v3;
}

- (void)_handshake
{
  v47 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    goto LABEL_14;
  }

  dispatch_assert_queue_V2(*(self + 56));
  if (inRunningBoardDaemon == 1)
  {
    v3 = rbs_connection_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_18E8AD000, v3, OS_LOG_TYPE_FAULT, "Handshake called in runningboardd", buf, 2u);
    }

    *(self + 144) = 3;
    goto LABEL_14;
  }

  os_unfair_lock_lock((self + 52));
  os_unfair_lock_lock((self + 40));
  v4 = *(self + 144);
  if (v4 == 3)
  {
    v6 = rbs_connection_log();
    if (OUTLINED_FUNCTION_22(v6))
    {
      *buf = 0;
      goto LABEL_12;
    }

LABEL_13:

    os_unfair_lock_unlock((self + 40));
    os_unfair_lock_unlock((self + 52));
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    v5 = rbs_connection_log();
    if (OUTLINED_FUNCTION_22(v5))
    {
      *buf = 0;
LABEL_12:
      OUTLINED_FUNCTION_16();
      _os_log_impl(v7, v8, v9, v10, v11, 2u);
      goto LABEL_13;
    }

    goto LABEL_13;
  }

  *(self + 144) = 1;
  [(RBSConnection *)self _lock_announceLostInheritances];
  [*(self + 104) removeAllObjects];
  allObjects = [*(self + 80) allObjects];
  [*(self + 80) removeAllObjects];
  v32 = [*(self + 120) copy];
  [*(self + 120) removeAllObjects];
  +[RBSProcessHandle clearAllHandles];
  v34 = [MEMORY[0x1E695DFA8] set];
  os_unfair_lock_lock((self + 44));
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v13 = *(self + 72);
  v14 = [v13 countByEnumeratingWithState:&v40 objects:v46 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v41;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v41 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v40 + 1) + 8 * i);
        v19 = [*(self + 72) objectForKey:v18];
        v20 = v19;
        if (v19)
        {
          descriptor = [v19 descriptor];
          identifier = [descriptor identifier];
          v23 = [identifier isEqual:v18];

          if (v23)
          {
            [v34 addObject:descriptor];
          }

          else
          {
            v24 = [descriptor copyWithIdentifier:v18];
            [v34 addObject:v24];
          }

          v25 = rbs_connection_log();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
          {
            *buf = 138543362;
            v45 = descriptor;
            _os_log_impl(&dword_18E8AD000, v25, OS_LOG_TYPE_INFO, "Preparing to send handshake assertion descriptor to server %{public}@", buf, 0xCu);
          }
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v40 objects:v46 count:16];
    }

    while (v15);
  }

  os_unfair_lock_unlock((self + 44));
  v26 = objc_alloc_init(RBSHandshakeRequest);
  [(RBSHandshakeRequest *)v26 setAssertionDescriptors:v34];
  v27 = [*(self + 128) copy];
  [(RBSHandshakeRequest *)v26 setSavedEndowments:v27];

  v28 = *(self + 64);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __27__RBSConnection__handshake__block_invoke;
  block[3] = &unk_1E72766C8;
  block[4] = self;
  v36 = v26;
  v37 = allObjects;
  v38 = v32;
  v39 = sel__handshake;
  v29 = v32;
  v30 = allObjects;
  v31 = v26;
  dispatch_async(v28, block);
  os_unfair_lock_unlock((self + 40));
  os_unfair_lock_unlock((self + 52));

LABEL_14:
  v12 = *MEMORY[0x1E69E9840];
}

- (void)_lock_announceLostInheritances
{
  if (self)
  {
    v2 = OUTLINED_FUNCTION_17(self);
    os_unfair_lock_assert_owner(v2);
    v4 = *(v1 + 32);
    v3 = [*(v1 + 104) copy];
    if ([v3 count])
    {
      [v4 didLoseInheritances:v3];
    }
  }
}

void __27__RBSConnection__handshake__block_invoke(uint64_t a1)
{
  v93 = *MEMORY[0x1E69E9840];
  v1 = (a1 + 32);
  os_unfair_lock_lock((*(a1 + 32) + 40));
  v2 = *&(*v1)[36]._os_unfair_lock_opaque;
  os_unfair_lock_unlock(*v1 + 10);
  if (v2 == 3)
  {
    v3 = 0;
  }

  else
  {
    v30 = 0;
    while (1)
    {
      v31 = rbs_connection_log();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *&buf[4] = v30 + 1;
        _os_log_impl(&dword_18E8AD000, v31, OS_LOG_TYPE_DEFAULT, "Sending handshake request attempt #%lu to server", buf, 0xCu);
      }

      os_unfair_lock_lock(*v1 + 10);
      v32 = [(RBSConnection *)*v1 _lock_connect];
      v2 = *&(*v1)[36]._os_unfair_lock_opaque;
      os_unfair_lock_unlock(*v1 + 10);
      if (v2 == 3 || v32 == 0)
      {
        break;
      }

      v34 = [RBSXPCMessage messageForMethod:sel_handshakeWithRequest_ varguments:*(a1 + 40), 0];
      v35 = objc_opt_class();
      v86 = 0;
      v3 = [(RBSXPCMessage *)v34 invokeOnConnection:v32 withReturnClass:v35 error:&v86];
      v36 = v86;
      if (v3)
      {
        v37 = rbs_connection_log();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_18E8AD000, v37, OS_LOG_TYPE_DEFAULT, "Handshake succeeded", buf, 2u);
        }

        v38 = v30;
        v2 = 2;
      }

      else
      {
        if (v30 >= 0x3E8)
        {
          __27__RBSConnection__handshake__block_invoke_cold_2();
        }

        v39 = rbs_connection_log();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          *&buf[4] = v36;
          _os_log_error_impl(&dword_18E8AD000, v39, OS_LOG_TYPE_ERROR, "Handshake failed with error: <%{public}@>", buf, 0xCu);
        }

        os_unfair_lock_lock(*v1 + 10);
        [(RBSConnection *)*v1 _lock_announceLostInheritances];
        os_unfair_lock_unlock(*v1 + 10);
        v38 = v30 + 1;
        v40 = (v30 + 1) / 0xAu;
        if (v40 >= 0xA)
        {
          v41 = 10;
        }

        else
        {
          v41 = v40;
        }

        if (v30 >= 9)
        {
          v42 = rbs_connection_log();
          if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134217984;
            *&buf[4] = v41;
            _os_log_impl(&dword_18E8AD000, v42, OS_LOG_TYPE_DEFAULT, "Sleeping for %lus before trying to reconnect", buf, 0xCu);
          }

          sleep(v41);
        }
      }

      v30 = v38;
      if (v3)
      {
        goto LABEL_3;
      }
    }

    v60 = rbs_connection_log();
    if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
    {
      __27__RBSConnection__handshake__block_invoke_cold_1(&v84, v85);
    }

    [(RBSConnection *)*v1 _disconnect];
    v3 = 0;
    v2 = 3;
  }

LABEL_3:
  os_unfair_lock_lock(*v1 + 10);
  *&(*v1)[36]._os_unfair_lock_opaque = v2;
  v4 = *v1;
  if (*&(*v1)[36]._os_unfair_lock_opaque != 2)
  {
    goto LABEL_63;
  }

  v5 = [v3 handle];
  v6 = [v5 identity];
  if (!v6)
  {
    __27__RBSConnection__handshake__block_invoke_cold_3(a1, v1);
  }

  v7 = rbs_connection_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    *&buf[4] = v6;
    _os_log_impl(&dword_18E8AD000, v7, OS_LOG_TYPE_DEFAULT, "Identity resolved as %{public}@", buf, 0xCu);
  }

  v8 = [*&(*v1)[6]._os_unfair_lock_opaque identity];
  v9 = v8;
  v10 = *v1;
  if (!*&(*v1)[6]._os_unfair_lock_opaque)
  {
LABEL_11:
    objc_storeStrong(v10 + 3, v5);
    v11 = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
    v12 = [v3 assertionIdentifiersByOldIdentifier];
    v13 = [MEMORY[0x1E695DFA8] set];
    os_unfair_lock_lock(*v1 + 11);
    v81[0] = MEMORY[0x1E69E9820];
    v81[1] = 3221225472;
    v81[2] = __27__RBSConnection__handshake__block_invoke_245;
    v81[3] = &unk_1E7276628;
    v81[4] = *v1;
    v71 = v11;
    v82 = v71;
    v14 = v13;
    v83 = v14;
    [v12 enumerateKeysAndObjectsUsingBlock:v81];
    v15 = [v3 assertionErrorsByOldIdentifier];
    v80[0] = MEMORY[0x1E69E9820];
    v80[1] = 3221225472;
    v80[2] = __27__RBSConnection__handshake__block_invoke_247;
    v80[3] = &unk_1E7276650;
    v80[4] = *v1;
    [v15 enumerateKeysAndObjectsUsingBlock:v80];

    v77[0] = MEMORY[0x1E69E9820];
    v77[1] = 3221225472;
    v77[2] = __27__RBSConnection__handshake__block_invoke_249;
    v77[3] = &unk_1E7276418;
    v16 = v14;
    v17 = *v1;
    v70 = v16;
    v78 = v16;
    v79 = v17;
    [RBSWorkloop performBackgroundWork:v77];
    if ([*&(*v1)[18]._os_unfair_lock_opaque count])
    {
      v18 = rbs_assertion_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        __27__RBSConnection__handshake__block_invoke_cold_5(v1, v18, v19, v20, v21, v22, v23, v24);
      }
    }

    objc_storeStrong(&(*v1)[18], v11);
    if ([*&(*v1)[18]._os_unfair_lock_opaque count])
    {
      v25 = rbs_connection_log();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v26 = *&(*v1)[18]._os_unfair_lock_opaque;
        *buf = 138543362;
        *&buf[4] = v26;
        _os_log_impl(&dword_18E8AD000, v25, OS_LOG_TYPE_INFO, "Reacquired assertions: %{public}@", buf, 0xCu);
      }
    }

    os_unfair_lock_unlock(*v1 + 11);
    v27 = [v3 managedEndpointByLaunchIdentifier];
    v28 = v27;
    if (v27)
    {
      v29 = v27;
    }

    else
    {
      v29 = [MEMORY[0x1E695DF20] dictionary];
    }

    v43 = v29;

    v44 = *&(*v1)[34]._os_unfair_lock_opaque;
    if (v44 && v44 != v43)
    {
      if (v43 && (Count = CFDictionaryGetCount(*&(*v1)[34]._os_unfair_lock_opaque), Count == CFDictionaryGetCount(v43)))
      {
        v65 = v12;
        v66 = v9;
        v67 = v5;
        v68 = v6;
        v69 = v3;
        memset(v92, 0, sizeof(v92));
        v46 = v44;
        v47 = [v46 countByEnumeratingWithState:v92 objects:buf count:16];
        if (v47)
        {
          v48 = v47;
          v49 = **&v92[1];
          while (2)
          {
            for (i = 0; i != v48; ++i)
            {
              if (**&v92[1] != v49)
              {
                objc_enumerationMutation(v46);
              }

              v51 = *(*(&v92[0] + 1) + 8 * i);
              v52 = [v46 objectForKey:v51];
              v53 = [v43 objectForKey:v51];
              v54 = [v52 _isEquivalentToEndpoint:v53];

              if (!v54)
              {

                v6 = v68;
                v3 = v69;
                v9 = v66;
                v5 = v67;
                v12 = v65;
                goto LABEL_59;
              }
            }

            v48 = [v46 countByEnumeratingWithState:v92 objects:buf count:16];
            if (v48)
            {
              continue;
            }

            break;
          }
        }

        v6 = v68;
        v3 = v69;
        v9 = v66;
        v5 = v67;
        v12 = v65;
      }

      else
      {
LABEL_59:
        v55 = rbs_connection_log();
        if (os_log_type_enabled(v55, OS_LOG_TYPE_FAULT))
        {
          __27__RBSConnection__handshake__block_invoke_cold_6(v1, v43, v55);
        }
      }
    }

    v56 = *&(*v1)[34]._os_unfair_lock_opaque;
    *&(*v1)[34]._os_unfair_lock_opaque = v43;

    v4 = *v1;
LABEL_63:
    os_unfair_lock_unlock(v4 + 10);
    if (v2 == 2)
    {
      v73[0] = MEMORY[0x1E69E9820];
      v73[1] = 3221225472;
      v73[2] = __27__RBSConnection__handshake__block_invoke_250;
      v73[3] = &unk_1E72766A0;
      v74 = *(a1 + 48);
      v57 = *(a1 + 56);
      v58 = *(a1 + 32);
      v75 = v57;
      v76 = v58;
      [RBSWorkloop performBackgroundWorkWithServiceClass:33 block:v73];
    }

    v59 = *MEMORY[0x1E69E9840];
    return;
  }

  if ([v8 isEqual:v6])
  {
    v10 = *v1;
    goto LABEL_11;
  }

  v61 = [v9 hostIdentity];
  if (v61)
  {
    v62 = v61;
    v63 = [v6 hostIdentity];

    if (!v63)
    {
      v64 = rbs_connection_log();
      if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
      {
        __27__RBSConnection__handshake__block_invoke_cold_4();
      }

      abort_with_reason();
    }
  }

  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  *buf = 0u;
  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  LODWORD(v92[0]) = 138412546;
  *(v92 + 4) = v6;
  WORD6(v92[0]) = 2112;
  *(v92 + 14) = v9;
  _os_log_send_and_compose_impl();
  _os_crash_msg();
  __break(1u);
}

uint64_t __27__RBSConnection__handshake__block_invoke_250(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v2);
        }

        [(RBSProcessMonitor *)*(*(&v12 + 1) + 8 * v7++) _reconnect];
      }

      while (v5 != v7);
      v5 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __27__RBSConnection__handshake__block_invoke_2_251;
  v11[3] = &unk_1E7276678;
  v8 = *(a1 + 40);
  v11[4] = *(a1 + 48);
  result = [v8 enumerateKeysAndObjectsUsingBlock:v11];
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

void __27__RBSConnection__handshake__block_invoke_249(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(a1 + 40) invalidateAssertionWithIdentifier:*(*(&v8 + 1) + 8 * v6++) error:{0, v8}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (id)managedEndpointByLaunchIdentifier
{
  if (self)
  {
    v10 = 0;
    v11 = &v10;
    v1 = OUTLINED_FUNCTION_4(self);
    OUTLINED_FUNCTION_21(v1, v2, v5, 3221225472, v6, v7, v8, v9);
    v3 = v11[5];
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)async_willExpireAssertionsSoon
{
  v3 = rbs_general_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18E8AD000, v3, OS_LOG_TYPE_DEFAULT, "Received process assertions expiration warning!", buf, 2u);
  }

  os_unfair_lock_lock(&self->_processExpirationLock);
  v4 = [(NSHashTable *)self->_expirationWarningClients copy];
  os_unfair_lock_unlock(&self->_processExpirationLock);
  v5 = rbs_general_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18E8AD000, v5, OS_LOG_TYPE_DEFAULT, "Notifying client of imminent expiration of assertion", buf, 2u);
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __47__RBSConnection_async_willExpireAssertionsSoon__block_invoke;
  v7[3] = &unk_1E7276440;
  v8 = v4;
  v6 = v4;
  [RBSWorkloop performCalloutWithServiceClass:v7 block:?];
}

void __47__RBSConnection_async_willExpireAssertionsSoon__block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  memset(v6, 0, sizeof(v6));
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:v6 objects:v7 count:16];
  if (v2)
  {
    __47__RBSConnection_async_willExpireAssertionsSoon__block_invoke_cold_1(v6, v1, v2, v7);
  }

  v3 = rbs_general_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_18E8AD000, v3, OS_LOG_TYPE_DEFAULT, "Expiration notification complete", v5, 2u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

uint64_t __47__RBSConnection_async_willExpireAssertionsSoon__block_invoke_cold_1(uint64_t a1, id obj, uint64_t a3, uint64_t a4)
{
  v8 = **(a1 + 16);
  do
  {
    v9 = 0;
    do
    {
      if (**(a1 + 16) != v8)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(a1 + 8) + 8 * v9);
      if (v10)
      {
        v11 = *(v10 + 8);
      }

      else
      {
        v11 = 0;
      }

      (*(v11 + 16))();
      ++v9;
    }

    while (a3 != v9);
    result = [obj countByEnumeratingWithState:a1 objects:a4 count:16];
    a3 = result;
  }

  while (result);
  return result;
}

- (RBSConnection)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"RBSConnection.m" lineNumber:198 description:@"cannot call -init on RBSConnection"];

  return 0;
}

- (void)dealloc
{
  xpc_connection_cancel(self->_connection);
  v3.receiver = self;
  v3.super_class = RBSConnection;
  [(RBSConnection *)&v3 dealloc];
}

void __41__RBSConnection_registerServiceDelegate___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  os_unfair_lock_lock((*(a1 + 32) + 40));
  v3 = *v2;
  if (*(*v2 + 32))
  {
    __41__RBSConnection_registerServiceDelegate___block_invoke_cold_1();
    v3 = v5;
  }

  objc_storeStrong((v3 + 32), *(a1 + 40));
  v4 = [*(*(a1 + 32) + 104) copy];
  os_unfair_lock_unlock((*(a1 + 32) + 40));
  if ([v4 count])
  {
    [*(a1 + 40) didReceiveInheritances:v4];
  }
}

void __68__RBSConnection_observeProcessAssertionsExpirationWarningWithBlock___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  os_unfair_lock_lock((*(a1 + 32) + 48));
  v4 = rbs_general_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_18E8AD000, v4, OS_LOG_TYPE_DEFAULT, "Removed observer for process assertions expiration warning: %{public}@", &v6, 0xCu);
  }

  [*(*(a1 + 32) + 112) removeObject:v3];
  os_unfair_lock_unlock((*(a1 + 32) + 48));

  v5 = *MEMORY[0x1E69E9840];
}

- (id)acquireAssertion:(id)assertion error:(id *)error
{
  v25 = *MEMORY[0x1E69E9840];
  assertionCopy = assertion;
  descriptor = [assertionCopy descriptor];
  v6 = rbs_assertion_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v24 = descriptor;
    _os_log_impl(&dword_18E8AD000, v6, OS_LOG_TYPE_INFO, "Acquiring assertion: %{public}@", buf, 0xCu);
  }

  v7 = [RBSXPCMessage messageForMethod:sel_acquireAssertionWithDescriptor_error_ varguments:descriptor, 0];
  v8 = *MEMORY[0x1E696A250];
  while (1)
  {
    _connection = [(RBSConnection *)self _connection];
    v10 = objc_opt_class();
    v22 = 0;
    v11 = [(RBSXPCMessage *)v7 invokeOnConnection:_connection withReturnClass:v10 error:&v22];
    v12 = v22;

    if (v11)
    {
      break;
    }

    if ([v12 code] != 4101)
    {
      goto LABEL_13;
    }

    domain = [v12 domain];
    v14 = [domain isEqualToString:v8];

    if (!v14)
    {
      goto LABEL_13;
    }

    v15 = rbs_assertion_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [RBSConnection acquireAssertion:buf error:&buf[1]];
    }

    [MEMORY[0x1E696AF00] sleepForTimeInterval:0.1];
  }

  v16 = rbs_assertion_log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    [RBSConnection acquireAssertion:error:];
  }

  os_unfair_lock_lock(&self->_assertionLock);
  [(NSMapTable *)self->_acquiredAssertionsByIdentifier setObject:assertionCopy forKey:v11];
  os_unfair_lock_unlock(&self->_assertionLock);
LABEL_13:
  if (error)
  {
    v17 = v12;
    *error = v12;
  }

  v18 = *MEMORY[0x1E69E9840];

  return v11;
}

- (BOOL)invalidateAssertion:(id)assertion error:(id *)error
{
  identifier = [assertion identifier];
  if (identifier)
  {
    v7 = [(RBSConnection *)self invalidateAssertionWithIdentifier:identifier error:error];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)executeLaunchRequest:(id)request
{
  v37 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  _init = [[RBSLaunchResponse alloc] _init];
  v6 = _init;
  if (executeLaunchRequest__permanentError)
  {
    [_init setError:?];
    goto LABEL_3;
  }

  v9 = rbs_general_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v36 = requestCopy;
    _os_log_impl(&dword_18E8AD000, v9, OS_LOG_TYPE_INFO, "Sending launch request: %{public}@", buf, 0xCu);
  }

  if (shared_cache_page_prewarmingLibraryCore() && getprewarm_for_launchSymbolLoc())
  {
    if (!requestCopy)
    {
      goto LABEL_13;
    }

    context = [(__CFString *)requestCopy context];

    if (!context)
    {
      goto LABEL_13;
    }

    context2 = [(__CFString *)requestCopy context];
    v30 = getprewarm_for_launchSymbolLoc();
    if (!v30)
    {
      [RBSConnection executeLaunchRequest:];
    }

    v30(context2);
  }

  else
  {
    context2 = rbs_general_log();
    if (os_log_type_enabled(context2, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_18E8AD000, context2, OS_LOG_TYPE_INFO, "shared_cache_page_prewarming::prewarm_for_launch() was not available.", buf, 2u);
    }
  }

LABEL_13:
  v11 = [RBSXPCMessage messageForMethod:sel_executeLaunchRequest_error_ varguments:requestCopy, 0];
  _connection = [(RBSConnection *)self _connection];
  v34 = 0;
  v13 = [v11 sendToConnection:_connection error:&v34];
  v14 = v34;
  v15 = v34;

  [v6 setError:v15];
  if ([(__CFString *)v15 rbs_isPermanentFailure])
  {
    objc_storeStrong(&executeLaunchRequest__permanentError, v14);
  }

  v16 = [v13 decodeObjectOfClass:objc_opt_class() forKey:@"return-value"];
  [v6 setProcess:v16];
  v17 = rbs_general_log();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = @"No Error";
    if (!v16)
    {
      v18 = v15;
    }

    *buf = 138543362;
    v36 = v18;
    _os_log_impl(&dword_18E8AD000, v17, OS_LOG_TYPE_INFO, "Received launch request response: <%{public}@>", buf, 0xCu);
  }

  v19 = [v13 decodeObjectOfClass:objc_opt_class() forKey:@"assertion-identifier"];
  if (v19)
  {
    v31 = v16;
    v32 = v15;
    v33 = v11;
    context3 = [(__CFString *)requestCopy context];
    identity = [context3 identity];
    v22 = [RBSTarget targetWithProcessIdentity:identity];

    explanation = [context3 explanation];
    attributes = [context3 attributes];
    v25 = [RBSAssertionDescriptor descriptorWithIdentifier:v19 target:v22 explanation:explanation attributes:attributes];

    v26 = [[RBSAssertion alloc] _initWithServerValidatedDescriptor:v25];
    v27 = rbs_assertion_log();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      [RBSConnection acquireAssertion:error:];
    }

    os_unfair_lock_lock(&self->_assertionLock);
    [(NSMapTable *)self->_acquiredAssertionsByIdentifier setObject:v26 forKey:v19];
    os_unfair_lock_unlock(&self->_assertionLock);
    [v6 setAssertion:v26];

    v15 = v32;
    v11 = v33;
    v16 = v31;
  }

  v28 = [v13 decodeDictionaryOfClass:objc_opt_class() forKey:@"managed-endpoint-by-launch-identifier"];
  if ([v28 count])
  {
    [v6 setManagedEndpointByLaunchIdentifier:v28];
  }

LABEL_3:
  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (BOOL)executeTerminateRequest:(id)request assertion:(id *)assertion error:(id *)error
{
  v40 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  if (executeTerminateRequest_assertion_error__permanentError)
  {
    LOBYTE(v10) = 0;
    if (error)
    {
      *error = executeTerminateRequest_assertion_error__permanentError;
    }
  }

  else
  {
    v13 = rbs_general_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v39 = requestCopy;
      _os_log_impl(&dword_18E8AD000, v13, OS_LOG_TYPE_INFO, "Sending terminate request: %{public}@", buf, 0xCu);
    }

    context = [(__CFString *)requestCopy context];
    attributes = [context attributes];
    v15 = [attributes count];

    if (!assertion && v15)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"RBSConnection.m" lineNumber:429 description:@"Cannot attempt to create a prevent launch assertion if the client will not retain the assertion"];
    }

    v17 = [RBSXPCMessage messageForMethod:sel_executeTerminateRequest_identifier_error_ varguments:requestCopy, 0];
    _connection = [(RBSConnection *)self _connection];
    v37 = 0;
    v19 = [v17 sendToConnection:_connection error:&v37];
    obj = v37;
    v20 = v37;

    v10 = [v19 decodeBoolForKey:@"return-value"];
    v21 = rbs_general_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = @"Success";
      if (!v10)
      {
        v22 = v20;
      }

      *buf = 138543362;
      v39 = v22;
      _os_log_impl(&dword_18E8AD000, v21, OS_LOG_TYPE_INFO, "Received terminate request response: <%{public}@>", buf, 0xCu);
    }

    v35 = v19;
    v23 = [v19 decodeObjectOfClass:objc_opt_class() forKey:@"assertion-identifier"];
    if (v23)
    {
      v32 = v20;
      v33 = v17;
      v24 = +[RBSTarget systemTarget];
      explanation = [context explanation];
      attributes2 = [context attributes];
      v27 = [RBSAssertionDescriptor descriptorWithIdentifier:v23 target:v24 explanation:explanation attributes:attributes2];

      v28 = [[RBSAssertion alloc] _initWithServerValidatedDescriptor:v27];
      v29 = rbs_assertion_log();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        [RBSConnection acquireAssertion:error:];
      }

      os_unfair_lock_lock(&self->_assertionLock);
      [(NSMapTable *)self->_acquiredAssertionsByIdentifier setObject:v28 forKey:v23];
      os_unfair_lock_unlock(&self->_assertionLock);
      if (assertion)
      {
        v30 = v28;
        *assertion = v28;
      }

      v17 = v33;
      v20 = v32;
    }

    if ([(__CFString *)v20 rbs_isPermanentFailure])
    {
      objc_storeStrong(&executeTerminateRequest_assertion_error__permanentError, obj);
    }

    if (error)
    {
      v31 = v20;
      *error = v20;
    }
  }

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

- (id)handleForKey:(id)key
{
  v20 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  os_unfair_lock_lock(&self->_lock);
  _lock_connect = [(RBSConnection *)self _lock_connect];
  v6 = self->_handleConnection;
  if (!v6)
  {
    v7 = rbs_connection_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v19 = @"com.apple.runningboard";
      _os_log_impl(&dword_18E8AD000, v7, OS_LOG_TYPE_DEFAULT, "Creating side-channel connection to %{public}@", buf, 0xCu);
    }

    mach_service = xpc_connection_create_mach_service([@"com.apple.runningboard" UTF8String], 0, 2uLL);
    handleConnection = self->_handleConnection;
    self->_handleConnection = mach_service;

    v10 = mach_service;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __30__RBSConnection_handleForKey___block_invoke;
    handler[3] = &unk_1E7276540;
    v6 = v10;
    v17 = v6;
    xpc_connection_set_event_handler(v6, handler);
    xpc_connection_activate(v6);
  }

  os_unfair_lock_unlock(&self->_lock);
  v11 = [RBSXPCMessage messageForMethod:sel_lookupHandleForKey_error_ varguments:keyCopy, 0];

  v12 = objc_opt_class();
  v13 = [(RBSXPCMessage *)v11 invokeOnConnection:v6 withReturnClass:v12 error:0];

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

void __30__RBSConnection_handleForKey___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (MEMORY[0x193AD5A20]() == MEMORY[0x1E69E9E98])
  {
    xpc_connection_cancel(*(a1 + 32));
  }

  else
  {
    v4 = MEMORY[0x193AD5A20](v3);
    if (v4 == MEMORY[0x1E69E9E80])
    {
      v9 = rbs_connection_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        __30__RBSConnection_handleForKey___block_invoke_cold_3();
      }

      xpc_dictionary_apply(v3, &__block_literal_global_116);
    }

    else
    {
      v5 = v4;
      v6 = MEMORY[0x1E69E9E68];
      v7 = rbs_connection_log();
      v8 = os_log_type_enabled(v7, OS_LOG_TYPE_FAULT);
      if (v5 == v6)
      {
        if (v8)
        {
          __30__RBSConnection_handleForKey___block_invoke_cold_2();
        }
      }

      else if (v8)
      {
        __30__RBSConnection_handleForKey___block_invoke_cold_1();
      }
    }
  }
}

uint64_t __30__RBSConnection_handleForKey___block_invoke_113(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = rbs_connection_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = a2;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&dword_18E8AD000, v5, OS_LOG_TYPE_DEFAULT, "errant message dictionary key:'%s' value:%@", &v8, 0x16u);
  }

  v6 = *MEMORY[0x1E69E9840];
  return 1;
}

- (id)handleForPredicate:(id)predicate error:(id *)error
{
  v14[1] = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  v7 = predicateCopy;
  if (predicateCopy)
  {
    [(RBSConnection *)predicateCopy handleForPredicate:error error:&v12];
    error = v12;
  }

  else if (error)
  {
    v8 = MEMORY[0x1E696ABC0];
    v13 = *MEMORY[0x1E696A588];
    v14[0] = @"No predicate specified";
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    *error = [v8 errorWithDomain:@"RBSRequestErrorDomain" code:1 userInfo:v9];

    error = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return error;
}

- (void)subscribeToProcessDeath:(id)death handler:(id)handler
{
  handlerCopy = handler;
  v7 = subscribeToProcessDeath_handler__onceToken;
  deathCopy = death;
  if (v7 != -1)
  {
    [RBSConnection subscribeToProcessDeath:handler:];
  }

  v9 = qos_class_self();
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __49__RBSConnection_subscribeToProcessDeath_handler___block_invoke_2;
  v12[3] = &unk_1E7276568;
  v14 = v9;
  v13 = handlerCopy;
  v10 = handlerCopy;
  v11 = [v12 copy];
  [(RBSConnection *)self _subscribeToProcessDeath:deathCopy handler:v11];
}

uint64_t __49__RBSConnection_subscribeToProcessDeath_handler___block_invoke()
{
  subscribeToProcessDeath_handler__processDeathQueue = [RBSWorkloop createCalloutQueue:?];

  return MEMORY[0x1EEE66BB8]();
}

void __49__RBSConnection_subscribeToProcessDeath_handler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = subscribeToProcessDeath_handler__processDeathQueue;
  v8 = *(a1 + 40);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __49__RBSConnection_subscribeToProcessDeath_handler___block_invoke_3;
  v12[3] = &unk_1E72763C8;
  v9 = *(a1 + 32);
  v14 = v6;
  v15 = v9;
  v13 = v5;
  v10 = v6;
  v11 = v5;
  RBSDispatchAsyncWithQoS(v7, v8, v12);
}

- (BOOL)subscribeProcessStateMonitor:(id)monitor configuration:(id)configuration error:(id *)error
{
  v42 = *MEMORY[0x1E69E9840];
  monitorCopy = monitor;
  configurationCopy = configuration;
  if (subscribeProcessStateMonitor_configuration_error__permanentError)
  {
    v10 = 0;
    if (error)
    {
      *error = subscribeProcessStateMonitor_configuration_error__permanentError;
    }

    goto LABEL_4;
  }

  os_unfair_lock_lock(&self->_lock);
  if (![(NSHashTable *)self->_processMonitors containsObject:monitorCopy])
  {
    [(NSHashTable *)self->_processMonitors addObject:monitorCopy];
  }

  v13 = [(NSMutableDictionary *)self->_stateByIdentity copy];
  calloutQueue = [monitorCopy calloutQueue];
  serviceClass = [configurationCopy serviceClass];
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __66__RBSConnection_subscribeProcessStateMonitor_configuration_error___block_invoke;
  v37[3] = &unk_1E7276418;
  v16 = v13;
  v38 = v16;
  v17 = monitorCopy;
  v39 = v17;
  RBSDispatchAsyncWithQoS(calloutQueue, serviceClass, v37);

  preventLaunchPredicates = self->_preventLaunchPredicates;
  if (preventLaunchPredicates)
  {
    v19 = [(NSSet *)preventLaunchPredicates copy];
    calloutQueue2 = [v17 calloutQueue];
    serviceClass2 = [configurationCopy serviceClass];
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __66__RBSConnection_subscribeProcessStateMonitor_configuration_error___block_invoke_2;
    v34[3] = &unk_1E7276418;
    v35 = v17;
    v36 = v19;
    v22 = v19;
    RBSDispatchAsyncWithQoS(calloutQueue2, serviceClass2, v34);
  }

  os_unfair_lock_unlock(&self->_lock);
  has_internal_content = os_variant_has_internal_content();
  v24 = rbs_monitor_log();
  v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
  if (has_internal_content)
  {
    if (v25)
    {
      v26 = [configurationCopy debugDescription];
      *buf = 138543362;
      v41 = v26;
LABEL_14:
      _os_log_impl(&dword_18E8AD000, v24, OS_LOG_TYPE_DEFAULT, "Updating configuration of monitor %{public}@", buf, 0xCu);
    }
  }

  else if (v25)
  {
    v26 = [configurationCopy description];
    *buf = 138543362;
    v41 = v26;
    goto LABEL_14;
  }

  [(RBSConnection *)self cleanOutStateIfNeeded];
  v27 = [RBSXPCMessage messageForMethod:sel_void_subscribeToProcessStateChangesWithConfiguration_error_ varguments:configurationCopy, 0];
  _connection = [(RBSConnection *)self _connection];
  v33 = 0;
  v29 = [v27 sendToConnection:_connection error:&v33];
  v30 = v33;
  v31 = v33;

  if ([v31 rbs_isPermanentFailure])
  {
    objc_storeStrong(&subscribeProcessStateMonitor_configuration_error__permanentError, v30);
  }

  if (error)
  {
    v32 = v31;
    *error = v31;
  }

  v10 = v31 == 0;

LABEL_4:
  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

void __66__RBSConnection_subscribeProcessStateMonitor_configuration_error___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [*(a1 + 32) allValues];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(a1 + 40) _handleProcessStateChange:*(*(&v8 + 1) + 8 * v6++)];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (id)statesForPredicate:(id)predicate withDescriptor:(id)descriptor error:(id *)error
{
  predicateCopy = predicate;
  descriptorCopy = descriptor;
  if (statesForPredicate_withDescriptor_error__permanentError)
  {
    v10 = 0;
    if (error)
    {
      *error = statesForPredicate_withDescriptor_error__permanentError;
    }
  }

  else
  {
    v12 = [RBSXPCMessage messageForMethod:sel_statesForPredicate_descriptor_error_ varguments:predicateCopy, descriptorCopy, 0];
    _connection = [(RBSConnection *)self _connection];
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v19 = 0;
    v10 = [(RBSXPCMessage *)v12 invokeOnConnection:_connection withReturnCollectionClass:v14 entryClass:v15 error:&v19];
    v16 = v19;

    if (v16)
    {
      if (error)
      {
        v17 = v16;
        *error = v16;
      }

      if ([v16 rbs_isPermanentFailure])
      {
        v18 = v16;
      }

      else
      {
        v18 = statesForPredicate_withDescriptor_error__permanentError;
      }

      objc_storeStrong(&statesForPredicate_withDescriptor_error__permanentError, v18);
    }
  }

  return v10;
}

- (id)lastExitContextForInstance:(id)instance error:(id *)error
{
  instanceCopy = instance;
  if (lastExitContextForInstance_error__permanentError)
  {
    v7 = 0;
    if (error)
    {
      *error = lastExitContextForInstance_error__permanentError;
    }
  }

  else
  {
    v9 = [RBSXPCMessage messageForMethod:sel_lastExitContextForInstance_error_ varguments:instanceCopy, 0];
    _connection = [(RBSConnection *)self _connection];
    v11 = objc_opt_class();
    v15 = 0;
    v7 = [(RBSXPCMessage *)v9 invokeOnConnection:_connection withReturnClass:v11 error:&v15];
    v12 = v15;

    if (v12)
    {
      if (error)
      {
        v13 = v12;
        *error = v12;
      }

      if ([v12 rbs_isPermanentFailure])
      {
        v14 = v12;
      }

      else
      {
        v14 = lastExitContextForInstance_error__permanentError;
      }

      objc_storeStrong(&lastExitContextForInstance_error__permanentError, v14);
    }
  }

  return v7;
}

- (id)limitationsForInstance:(id)instance error:(id *)error
{
  instanceCopy = instance;
  if (limitationsForInstance_error__permanentError)
  {
    v7 = 0;
    if (error)
    {
      *error = limitationsForInstance_error__permanentError;
    }
  }

  else
  {
    v9 = [RBSXPCMessage messageForMethod:sel_limitationsForInstance_error_ varguments:instanceCopy, 0];
    _connection = [(RBSConnection *)self _connection];
    v11 = objc_opt_class();
    v15 = 0;
    v7 = [(RBSXPCMessage *)v9 invokeOnConnection:_connection withReturnClass:v11 error:&v15];
    v12 = v15;

    if (v12)
    {
      if (error)
      {
        v13 = v12;
        *error = v12;
      }

      if ([v12 rbs_isPermanentFailure])
      {
        v14 = v12;
      }

      else
      {
        v14 = limitationsForInstance_error__permanentError;
      }

      objc_storeStrong(&limitationsForInstance_error__permanentError, v14);
    }
  }

  return v7;
}

- (id)hostProcessForInstance:(id)instance error:(id *)error
{
  instanceCopy = instance;
  if (hostProcessForInstance_error__permanentError)
  {
    v7 = 0;
    if (error)
    {
      *error = hostProcessForInstance_error__permanentError;
    }
  }

  else
  {
    v9 = [RBSXPCMessage messageForMethod:sel_hostProcessForInstance_error_ varguments:instanceCopy, 0];
    _connection = [(RBSConnection *)self _connection];
    v11 = objc_opt_class();
    v15 = 0;
    v7 = [(RBSXPCMessage *)v9 invokeOnConnection:_connection withReturnClass:v11 error:&v15];
    v12 = v15;

    if (v12)
    {
      if (error)
      {
        v13 = v12;
        *error = v12;
      }

      if ([v12 rbs_isPermanentFailure])
      {
        v14 = v12;
      }

      else
      {
        v14 = hostProcessForInstance_error__permanentError;
      }

      objc_storeStrong(&hostProcessForInstance_error__permanentError, v14);
    }
  }

  return v7;
}

- (id)infoPlistResultForInstance:(id)instance forKeys:(id)keys error:(id *)error
{
  instanceCopy = instance;
  keysCopy = keys;
  if (infoPlistResultForInstance_forKeys_error__permanentError)
  {
    value = 0;
    if (error)
    {
      *error = infoPlistResultForInstance_forKeys_error__permanentError;
    }
  }

  else
  {
    v12 = [RBSXPCMessage messageForMethod:sel_infoPlistResultForInstance_forKeys_error_ varguments:instanceCopy, keysCopy, 0];
    _connection = [(RBSConnection *)self _connection];
    v14 = objc_opt_class();
    v19 = 0;
    v15 = [(RBSXPCMessage *)v12 invokeOnConnection:_connection withReturnClass:v14 error:&v19];
    v16 = v19;

    value = [v15 value];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

      value = 0;
    }

    if (v16)
    {
      if (error)
      {
        v17 = v16;
        *error = v16;
      }

      if ([v16 rbs_isPermanentFailure])
      {
        v18 = v16;
      }

      else
      {
        v18 = infoPlistResultForInstance_forKeys_error__permanentError;
      }

      objc_storeStrong(&infoPlistResultForInstance_forKeys_error__permanentError, v18);
    }
  }

  return value;
}

- (id)captureStateForSubsystem:(id)subsystem error:(id *)error
{
  subsystemCopy = subsystem;
  if (captureStateForSubsystem_error__permanentError)
  {
    v7 = 0;
    if (error)
    {
      *error = captureStateForSubsystem_error__permanentError;
    }
  }

  else
  {
    v9 = [RBSXPCMessage messageForMethod:sel_captureStateForSubsystem_error_ varguments:subsystemCopy, 0];
    _connection = [(RBSConnection *)self _connection];
    v11 = objc_opt_class();
    v15 = 0;
    v7 = [(RBSXPCMessage *)v9 invokeOnConnection:_connection withReturnClass:v11 error:&v15];
    v12 = v15;

    if (v12)
    {
      if (error)
      {
        v13 = v12;
        *error = v12;
      }

      if ([v12 rbs_isPermanentFailure])
      {
        v14 = v12;
      }

      else
      {
        v14 = captureStateForSubsystem_error__permanentError;
      }

      objc_storeStrong(&captureStateForSubsystem_error__permanentError, v14);
    }
  }

  return v7;
}

- (id)identifiersForStateCaptureSubsystems:(id *)subsystems
{
  v4 = identifiersForStateCaptureSubsystems__permanentError;
  if (identifiersForStateCaptureSubsystems__permanentError)
  {
    if (subsystems)
    {
      v5 = identifiersForStateCaptureSubsystems__permanentError;
      v6 = 0;
      *subsystems = v4;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    [RBSConnection identifiersForStateCaptureSubsystems:];
    v6 = v8;
  }

  return v6;
}

- (id)busyExtensionInstancesFromSet:(id)set error:(id *)error
{
  setCopy = set;
  if (busyExtensionInstancesFromSet_error__permanentError)
  {
    v7 = 0;
    if (error)
    {
      *error = busyExtensionInstancesFromSet_error__permanentError;
    }
  }

  else
  {
    v9 = [RBSXPCMessage messageForMethod:sel_busyExtensionInstancesFromSet_error_ varguments:setCopy, 0];
    _connection = [(RBSConnection *)self _connection];
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v16 = 0;
    v7 = [(RBSXPCMessage *)v9 invokeOnConnection:_connection withReturnCollectionClass:v11 entryClass:v12 error:&v16];
    v13 = v16;

    if (v13)
    {
      if (error)
      {
        v14 = v13;
        *error = v13;
      }

      if ([v13 rbs_isPermanentFailure])
      {
        v15 = v13;
      }

      else
      {
        v15 = busyExtensionInstancesFromSet_error__permanentError;
      }

      objc_storeStrong(&busyExtensionInstancesFromSet_error__permanentError, v15);
    }
  }

  return v7;
}

- (id)preventLaunchPredicatesWithError:(id *)error
{
  v4 = preventLaunchPredicatesWithError__permanentError;
  if (preventLaunchPredicatesWithError__permanentError)
  {
    if (error)
    {
      v5 = preventLaunchPredicatesWithError__permanentError;
      v6 = 0;
      *error = v4;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    [RBSConnection preventLaunchPredicatesWithError:];
    v6 = v8;
  }

  return v6;
}

- (void)reset
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 136315138;
  v3 = "[RBSConnection reset]";
  _os_log_error_impl(&dword_18E8AD000, log, OS_LOG_TYPE_ERROR, "%s no longer does anything", &v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

- (BOOL)saveEndowment:(id)endowment withError:(id *)error
{
  endowmentCopy = endowment;
  if (!endowmentCopy)
  {
    [RBSConnection saveEndowment:a2 withError:self];
  }

  if (saveEndowment_withError__permanentError)
  {
    LOBYTE(bOOLValue) = 0;
    if (error)
    {
      *error = saveEndowment_withError__permanentError;
    }
  }

  else
  {
    _connection = [(RBSConnection *)self _connection];
    os_unfair_lock_lock(&self->_savedEndowmentLock);
    v11 = [RBSXPCMessage messageForMethod:sel_saveEndowment_withError_ varguments:endowmentCopy, 0];
    v12 = objc_opt_class();
    v17 = 0;
    v13 = [(RBSXPCMessage *)v11 invokeOnConnection:_connection withReturnClass:v12 error:&v17];
    v14 = v17;
    v15 = v17;

    if ([v15 rbs_isPermanentFailure])
    {
      objc_storeStrong(&saveEndowment_withError__permanentError, v14);
    }

    if (error)
    {
      v16 = v15;
      *error = v15;
    }

    bOOLValue = [v13 BOOLValue];
    if (bOOLValue)
    {
      [(NSMutableArray *)self->_savedEndowments addObject:endowmentCopy];
    }

    os_unfair_lock_unlock(&self->_savedEndowmentLock);
  }

  return bOOLValue;
}

- (void)async_didChangeInheritances:(id)inheritances completion:(id)completion
{
  inheritancesCopy = inheritances;
  completionCopy = completion;
  v8 = rbs_connection_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [RBSConnection async_didChangeInheritances:completion:];
  }

  dispatch_assert_queue_V2(self->_connectionQueue);
  os_unfair_lock_lock(&self->_lock);
  inheritances = self->_inheritances;
  gainedInheritances = [inheritancesCopy gainedInheritances];
  [(NSMutableSet *)inheritances unionSet:gainedInheritances];

  v11 = self->_inheritances;
  lostInheritances = [inheritancesCopy lostInheritances];
  [(NSMutableSet *)v11 minusSet:lostInheritances];

  v13 = self->_serviceDelegate;
  os_unfair_lock_unlock(&self->_lock);
  gainedInheritances2 = [inheritancesCopy gainedInheritances];
  v15 = [gainedInheritances2 count];

  if (v15)
  {
    gainedInheritances3 = [inheritancesCopy gainedInheritances];
    [(RBSConnectionServiceDelegate *)v13 didReceiveInheritances:gainedInheritances3];
  }

  lostInheritances2 = [inheritancesCopy lostInheritances];
  v18 = [lostInheritances2 count];

  if (v18)
  {
    lostInheritances3 = [inheritancesCopy lostInheritances];
    [(RBSConnectionServiceDelegate *)v13 didLoseInheritances:lostInheritances3];
  }

  completionCopy[2](completionCopy);
}

- (void)async_assertionsDidInvalidate:(id)invalidate withError:(id)error
{
  v39 = *MEMORY[0x1E69E9840];
  invalidateCopy = invalidate;
  errorCopy = error;
  v8 = [MEMORY[0x1E695DFA8] set];
  os_unfair_lock_lock(&self->_assertionLock);
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v9 = invalidateCopy;
  v10 = [v9 countByEnumeratingWithState:&v31 objects:v38 count:16];
  if (v10)
  {
    v12 = v10;
    v13 = *v32;
    *&v11 = 138543362;
    v26 = v11;
    do
    {
      v14 = 0;
      do
      {
        if (*v32 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v31 + 1) + 8 * v14);
        v16 = rbs_assertion_log();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          *buf = v26;
          v37 = v15;
          _os_log_debug_impl(&dword_18E8AD000, v16, OS_LOG_TYPE_DEBUG, "Assertion %{public}@ did invalidate", buf, 0xCu);
        }

        v17 = [(NSMapTable *)self->_acquiredAssertionsByIdentifier objectForKey:v15];
        v18 = rbs_assertion_log();
        v19 = v18;
        if (v17)
        {
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
          {
            *buf = v26;
            v37 = v15;
            _os_log_debug_impl(&dword_18E8AD000, v19, OS_LOG_TYPE_DEBUG, "Removing assertion %{public}@ from dictionary", buf, 0xCu);
          }

          [(NSMapTable *)self->_acquiredAssertionsByIdentifier removeObjectForKey:v15];
          [v8 addObject:v17];
        }

        else
        {
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            *buf = v26;
            v37 = v15;
            _os_log_impl(&dword_18E8AD000, v19, OS_LOG_TYPE_INFO, "Client is not tracking assertion %{public}@", buf, 0xCu);
          }
        }

        ++v14;
      }

      while (v12 != v14);
      v12 = [v9 countByEnumeratingWithState:&v31 objects:v38 count:16];
    }

    while (v12);
  }

  os_unfair_lock_unlock(&self->_assertionLock);
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v20 = v8;
  v21 = [v20 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v28;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v28 != v23)
        {
          objc_enumerationMutation(v20);
        }

        [*(*(&v27 + 1) + 8 * i) _serverInvalidateWithError:{errorCopy, v26, v27}];
      }

      v22 = [v20 countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v22);
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (void)async_assertionWillInvalidate:(id)invalidate
{
  invalidateCopy = invalidate;
  v5 = rbs_assertion_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [RBSConnection async_assertionWillInvalidate:];
  }

  os_unfair_lock_lock(&self->_assertionLock);
  v6 = [(NSMapTable *)self->_acquiredAssertionsByIdentifier objectForKey:invalidateCopy];
  os_unfair_lock_unlock(&self->_assertionLock);
  [(RBSAssertion *)v6 _serverWillInvalidate];
}

- (void)async_observedProcessStatesDidChange:(id)change completion:(id)completion
{
  v61 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  completionCopy = completion;
  os_unfair_lock_lock(&self->_lock);
  allObjects = [(NSHashTable *)self->_processMonitors allObjects];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = changeCopy;
  v7 = [obj countByEnumeratingWithState:&v47 objects:v60 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v48;
    selfCopy = self;
    do
    {
      v10 = 0;
      v38 = v8;
      do
      {
        if (*v48 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v47 + 1) + 8 * v10);
        v12 = rbs_monitor_log();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          process = [v11 process];
          rbs_pid = [process rbs_pid];
          process2 = [v11 process];
          identity = [process2 identity];
          NSStringFromRBSTaskState([v11 taskState]);
          v18 = v17 = v9;
          endowmentNamespaces = [v11 endowmentNamespaces];
          v20 = [endowmentNamespaces containsObject:@"com.apple.frontboard.visibility"];
          *buf = 67109890;
          v21 = @"-NotVisible";
          if (v20)
          {
            v21 = @"-Visible";
          }

          v53 = rbs_pid;
          v54 = 2114;
          v55 = identity;
          v56 = 2114;
          v57 = v18;
          v58 = 2114;
          v59 = v21;
          _os_log_impl(&dword_18E8AD000, v12, OS_LOG_TYPE_DEFAULT, "Received state update for %d (%{public}@, %{public}@%{public}@", buf, 0x26u);

          self = selfCopy;
          v9 = v17;
          v8 = v38;
        }

        process3 = [v11 process];
        identity2 = [process3 identity];

        if (!identity2)
        {
          [RBSConnection async_observedProcessStatesDidChange:completion:];
        }

        isEmptyState = [v11 isEmptyState];
        stateByIdentity = self->_stateByIdentity;
        if (isEmptyState)
        {
          [(NSMutableDictionary *)stateByIdentity removeObjectForKey:identity2];
        }

        else
        {
          [(NSMutableDictionary *)stateByIdentity setObject:v11 forKey:identity2];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [obj countByEnumeratingWithState:&v47 objects:v60 count:16];
    }

    while (v8);
  }

  os_unfair_lock_unlock(&self->_lock);
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v26 = allObjects;
  v27 = [v26 countByEnumeratingWithState:&v43 objects:v51 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v44;
    do
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v44 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v31 = *(*(&v43 + 1) + 8 * i);
        calloutQueue = [v31 calloutQueue];
        serviceClass = [v31 serviceClass];
        v40[0] = MEMORY[0x1E69E9820];
        v40[1] = 3221225472;
        v40[2] = __65__RBSConnection_async_observedProcessStatesDidChange_completion___block_invoke;
        v40[3] = &unk_1E7276418;
        v41 = obj;
        v42 = v31;
        RBSDispatchAsyncWithQoS(calloutQueue, serviceClass, v40);
      }

      v28 = [v26 countByEnumeratingWithState:&v43 objects:v51 count:16];
    }

    while (v28);
  }

  completionCopy[2](completionCopy);
  v34 = *MEMORY[0x1E69E9840];
}

void __65__RBSConnection_async_observedProcessStatesDidChange_completion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(a1 + 40) _handleProcessStateChange:{*(*(&v8 + 1) + 8 * v6++), v8}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)async_observedProcessExitEvents:(id)events completion:(id)completion
{
  v26 = *MEMORY[0x1E69E9840];
  eventsCopy = events;
  completionCopy = completion;
  os_unfair_lock_lock(&self->_lock);
  allObjects = [(NSHashTable *)self->_processMonitors allObjects];
  os_unfair_lock_unlock(&self->_lock);
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = allObjects;
  v8 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        calloutQueue = [v12 calloutQueue];
        serviceClass = [v12 serviceClass];
        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 3221225472;
        v18[2] = __60__RBSConnection_async_observedProcessExitEvents_completion___block_invoke;
        v18[3] = &unk_1E7276418;
        v19 = eventsCopy;
        v20 = v12;
        RBSDispatchAsyncWithQoS(calloutQueue, serviceClass, v18);
      }

      v9 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v9);
  }

  completionCopy[2](completionCopy);
  v15 = *MEMORY[0x1E69E9840];
}

void __60__RBSConnection_async_observedProcessExitEvents_completion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(a1 + 40) _handleExitEvent:{*(*(&v8 + 1) + 8 * v6++), v8}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)async_observedPreventLaunchPredicatesUpdate:(id)update completion:(id)completion
{
  v27 = *MEMORY[0x1E69E9840];
  updateCopy = update;
  completionCopy = completion;
  if (!updateCopy)
  {
    updateCopy = [MEMORY[0x1E695DFD8] set];
  }

  os_unfair_lock_lock(&self->_lock);
  preventLaunchPredicates = self->_preventLaunchPredicates;
  if (updateCopy == preventLaunchPredicates || updateCopy && preventLaunchPredicates && [(NSSet *)updateCopy isEqual:?])
  {
    os_unfair_lock_unlock(&self->_lock);
    completionCopy[2](completionCopy);
  }

  else
  {
    v18 = completionCopy;
    objc_storeStrong(&self->_preventLaunchPredicates, updateCopy);
    allObjects = [(NSHashTable *)self->_processMonitors allObjects];
    os_unfair_lock_unlock(&self->_lock);
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    obj = allObjects;
    v10 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v23;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v23 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v22 + 1) + 8 * i);
          calloutQueue = [v14 calloutQueue];
          serviceClass = [v14 serviceClass];
          v20[0] = MEMORY[0x1E69E9820];
          v20[1] = 3221225472;
          v20[2] = __72__RBSConnection_async_observedPreventLaunchPredicatesUpdate_completion___block_invoke;
          v20[3] = &unk_1E7276418;
          v20[4] = v14;
          v21 = updateCopy;
          RBSDispatchAsyncWithQoS(calloutQueue, serviceClass, v20);
        }

        v11 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v11);
    }

    completionCopy = v18;
    v18[2](v18);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)async_processDidExit:(id)exit withContext:(id)context
{
  v26 = *MEMORY[0x1E69E9840];
  exitCopy = exit;
  contextCopy = context;
  v8 = rbs_process_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v23 = exitCopy;
    v24 = 2114;
    v25 = contextCopy;
    _os_log_impl(&dword_18E8AD000, v8, OS_LOG_TYPE_DEFAULT, "Firing exit handlers for %{public}@ with context %{public}@", buf, 0x16u);
  }

  os_unfair_lock_lock(&self->_lock);
  v9 = [(NSMutableDictionary *)self->_deathHandlers objectForKey:exitCopy];
  v10 = [v9 copy];

  [(NSMutableDictionary *)self->_deathHandlers removeObjectForKey:exitCopy];
  os_unfair_lock_unlock(&self->_lock);
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v18;
    do
    {
      v15 = 0;
      do
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v11);
        }

        (*(*(*(&v17 + 1) + 8 * v15) + 16))(*(*(&v17 + 1) + 8 * v15));
        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v13);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)_handleMessage:(uint64_t)message
{
  v61 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (message)
  {
    dispatch_assert_queue_V2(*(message + 56));
    v4 = [RBSXPCMessage messageForXPCMessage:v3];
    method = [v4 method];
    if (v4)
    {
      v6 = method == 0;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      v7 = rbs_connection_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [RBSConnection _handleMessage:];
      }
    }

    else
    {
      v8 = method;
      v9 = objc_opt_respondsToSelector();
      if (v9)
      {
        v10 = rbs_message_log();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          [(RBSConnection *)message _handleMessage:v8, v10];
        }

        reply = [v4 reply];
        v58[0] = MEMORY[0x1E69E9820];
        v58[1] = 3221225472;
        v58[2] = __32__RBSConnection__handleMessage___block_invoke;
        v58[3] = &unk_1E7276440;
        v7 = reply;
        v59 = v7;
        v12 = MEMORY[0x193AD5470](v58);
        v56[0] = 0;
        v56[1] = v56;
        v56[2] = 0x3032000000;
        v56[3] = __Block_byref_object_copy__1;
        v56[4] = __Block_byref_object_dispose__1;
        v57 = 0;
        if (v8 == sel_async_didChangeInheritances_completion_)
        {
          activity_block[0] = MEMORY[0x1E69E9820];
          activity_block[1] = 3221225472;
          activity_block[2] = __32__RBSConnection__handleMessage___block_invoke_2;
          activity_block[3] = &unk_1E72765B8;
          v54 = v56;
          v51 = v4;
          messageCopy = message;
          v53 = v12;
          v55 = v8;
          _os_activity_initiate(&dword_18E8AD000, "didChangeInheritances", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
        }

        else if (v8 == sel_async_willExpireAssertionsSoon)
        {
          [(RBSConnection *)v49 _handleMessage:message];
        }

        else if (v8 == sel_async_assertionWillInvalidate_)
        {
          v44[0] = MEMORY[0x1E69E9820];
          v44[1] = 3221225472;
          v44[2] = __32__RBSConnection__handleMessage___block_invoke_2_209;
          v44[3] = &unk_1E72765E0;
          v45 = v4;
          messageCopy2 = message;
          v47 = v56;
          v48 = v8;
          _os_activity_initiate(&dword_18E8AD000, "assertionWillInvalidate", OS_ACTIVITY_FLAG_DEFAULT, v44);
        }

        else if (v8 == sel_async_assertionsDidInvalidate_withError_)
        {
          v39[0] = MEMORY[0x1E69E9820];
          v39[1] = 3221225472;
          v39[2] = __32__RBSConnection__handleMessage___block_invoke_212;
          v39[3] = &unk_1E72765E0;
          v40 = v4;
          messageCopy3 = message;
          v42 = v56;
          v43 = v8;
          _os_activity_initiate(&dword_18E8AD000, "assertionsDidInvalidate", OS_ACTIVITY_FLAG_DEFAULT, v39);
        }

        else if (v8 == sel_async_observedProcessStatesDidChange_completion_)
        {
          v33[0] = MEMORY[0x1E69E9820];
          v33[1] = 3221225472;
          v33[2] = __32__RBSConnection__handleMessage___block_invoke_215;
          v33[3] = &unk_1E72765B8;
          v37 = v56;
          v34 = v4;
          messageCopy4 = message;
          v36 = v12;
          v38 = v8;
          _os_activity_initiate(&dword_18E8AD000, "observedProcessStatesDidChange", OS_ACTIVITY_FLAG_DEFAULT, v33);
        }

        else if (v8 == sel_async_observedProcessExitEvents_completion_)
        {
          v27[0] = MEMORY[0x1E69E9820];
          v27[1] = 3221225472;
          v27[2] = __32__RBSConnection__handleMessage___block_invoke_218;
          v27[3] = &unk_1E72765B8;
          v31 = v56;
          v28 = v4;
          messageCopy5 = message;
          v30 = v12;
          v32 = v8;
          _os_activity_initiate(&dword_18E8AD000, "observedProcessExitEvents", OS_ACTIVITY_FLAG_DEFAULT, v27);
        }

        else if (v8 == sel_async_observedPreventLaunchPredicatesUpdate_completion_)
        {
          v21[0] = MEMORY[0x1E69E9820];
          v21[1] = 3221225472;
          v21[2] = __32__RBSConnection__handleMessage___block_invoke_222;
          v21[3] = &unk_1E72765B8;
          v25 = v56;
          v22 = v4;
          messageCopy6 = message;
          v24 = v12;
          v26 = v8;
          _os_activity_initiate(&dword_18E8AD000, "observedPreventLaunchPredicatesUpdate", OS_ACTIVITY_FLAG_DEFAULT, v21);
        }

        else if (v8 == sel_async_processDidExit_withContext_)
        {
          v16[0] = MEMORY[0x1E69E9820];
          v16[1] = 3221225472;
          v16[2] = __32__RBSConnection__handleMessage___block_invoke_225;
          v16[3] = &unk_1E72765E0;
          v17 = v4;
          messageCopy7 = message;
          v19 = v56;
          v20 = v8;
          _os_activity_initiate(&dword_18E8AD000, "processDidExit", OS_ACTIVITY_FLAG_DEFAULT, v16);
        }

        else
        {
          v13 = rbs_connection_log();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            v14 = NSStringFromSelector(v8);
            [(RBSConnection *)v14 _handleMessage:v60];
          }
        }

        _Block_object_dispose(v56, 8);
      }

      else
      {
        v7 = rbs_connection_log();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          [RBSConnection _handleMessage:v8];
        }
      }
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __32__RBSConnection__handleMessage___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_opt_class();
  v4 = *(*(a1 + 56) + 8);
  obj = 0;
  v5 = [v2 decodeArgumentWithClass:v3 atIndex:0 allowNil:0 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  if (*(*(*(a1 + 56) + 8) + 40))
  {
    v6 = rbs_connection_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __32__RBSConnection__handleMessage___block_invoke_2_cold_1();
    }
  }

  else
  {
    [*(a1 + 40) async_didChangeInheritances:v5 completion:*(a1 + 48)];
  }
}

void __32__RBSConnection__handleMessage___block_invoke_2_209(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_opt_class();
  v4 = *(*(a1 + 48) + 8);
  obj = 0;
  v5 = [v2 decodeArgumentWithClass:v3 atIndex:0 allowNil:0 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  if (*(*(*(a1 + 48) + 8) + 40))
  {
    v6 = rbs_connection_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __32__RBSConnection__handleMessage___block_invoke_2_209_cold_1();
    }
  }

  else
  {
    [*(a1 + 40) async_assertionWillInvalidate:v5];
  }
}

void __32__RBSConnection__handleMessage___block_invoke_212(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = *(*(a1 + 48) + 8);
  obj = 0;
  v6 = [v2 decodeArgumentCollection:v3 withClass:v4 atIndex:0 allowNil:0 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  v7 = *(a1 + 32);
  v8 = objc_opt_class();
  v9 = *(*(a1 + 48) + 8);
  v12 = 0;
  v10 = [v7 decodeArgumentWithClass:v8 atIndex:1 allowNil:0 error:&v12];
  objc_storeStrong((v9 + 40), v12);
  if (*(*(*(a1 + 48) + 8) + 40))
  {
    v11 = rbs_connection_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __32__RBSConnection__handleMessage___block_invoke_2_209_cold_1();
    }
  }

  else
  {
    [*(a1 + 40) async_assertionsDidInvalidate:v6 withError:v10];
  }
}

void __32__RBSConnection__handleMessage___block_invoke_215(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = *(*(a1 + 56) + 8);
  obj = 0;
  v6 = [v2 decodeArgumentCollection:v3 withClass:v4 atIndex:0 allowNil:0 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  if (*(*(*(a1 + 56) + 8) + 40))
  {
    v7 = rbs_connection_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __32__RBSConnection__handleMessage___block_invoke_2_cold_1();
    }
  }

  else
  {
    [*(a1 + 40) async_observedProcessStatesDidChange:v6 completion:*(a1 + 48)];
  }
}

void __32__RBSConnection__handleMessage___block_invoke_218(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = *(*(a1 + 56) + 8);
  obj = 0;
  v6 = [v2 decodeArgumentCollection:v3 withClass:v4 atIndex:0 allowNil:0 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  if (*(*(*(a1 + 56) + 8) + 40))
  {
    v7 = rbs_connection_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __32__RBSConnection__handleMessage___block_invoke_2_cold_1();
    }
  }

  else
  {
    [*(a1 + 40) async_observedProcessExitEvents:v6 completion:*(a1 + 48)];
  }
}

void __32__RBSConnection__handleMessage___block_invoke_222(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = *(*(a1 + 56) + 8);
  obj = 0;
  v6 = [v2 decodeArgumentCollection:v3 withClass:v4 atIndex:0 allowNil:1 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  if (*(*(*(a1 + 56) + 8) + 40))
  {
    v7 = rbs_connection_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __32__RBSConnection__handleMessage___block_invoke_2_cold_1();
    }
  }

  else
  {
    [*(a1 + 40) async_observedPreventLaunchPredicatesUpdate:v6 completion:*(a1 + 48)];
  }
}

void __32__RBSConnection__handleMessage___block_invoke_225(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_opt_class();
  v4 = *(*(a1 + 48) + 8);
  obj = 0;
  v5 = [v2 decodeArgumentWithClass:v3 atIndex:0 allowNil:0 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(a1 + 32);
  v7 = objc_opt_class();
  v8 = *(*(a1 + 48) + 8);
  v11 = 0;
  v9 = [v6 decodeArgumentWithClass:v7 atIndex:1 allowNil:0 error:&v11];
  objc_storeStrong((v8 + 40), v11);
  if (*(*(*(a1 + 48) + 8) + 40))
  {
    v10 = rbs_connection_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __32__RBSConnection__handleMessage___block_invoke_2_209_cold_1();
    }
  }

  else
  {
    [*(a1 + 40) async_processDidExit:v5 withContext:v9];
  }
}

void __37__RBSConnection__lock_setConnection___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x193AD5A20]();
  if (v4 == MEMORY[0x1E69E9E98])
  {
    v5 = MEMORY[0x1E69E9E18];
    v6 = rbs_connection_log();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
    if (v3 == v5)
    {
      if (v7)
      {
        __37__RBSConnection__lock_setConnection___block_invoke_cold_2();
      }

      os_unfair_lock_lock((*(a1 + 32) + 40));
      xpc_connection_set_event_handler(*(*(a1 + 32) + 8), &__block_literal_global_231);
      xpc_connection_cancel(*(*(a1 + 32) + 8));
      v8 = *(a1 + 32);
      v9 = *(v8 + 8);
      *(v8 + 8) = 0;

      v10 = *(a1 + 32);
      v11 = *(v10 + 16);
      *(v10 + 16) = 0;

      os_unfair_lock_unlock((*(a1 + 32) + 40));
      [(RBSConnection *)*(a1 + 32) _handshake];
    }

    else
    {
      if (v7)
      {
        __37__RBSConnection__lock_setConnection___block_invoke_cold_1();
      }

      [(RBSConnection *)*(a1 + 32) _disconnect];
    }
  }

  else if (v4 == MEMORY[0x1E69E9E80])
  {
    [(RBSConnection *)*(a1 + 32) _handleMessage:v3];
  }
}

void __27__RBSConnection__handshake__block_invoke_245(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(*(a1 + 32) + 72) objectForKey:v5];
  v8 = v7;
  if (v7)
  {
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __27__RBSConnection__handshake__block_invoke_2;
    v15 = &unk_1E7276418;
    v9 = v7;
    v16 = v9;
    v10 = v6;
    v17 = v10;
    [RBSWorkloop performBackgroundWork:&v12];
    [*(a1 + 40) setObject:v9 forKey:{v10, v12, v13, v14, v15}];

    v11 = v16;
  }

  else
  {
    [*(a1 + 48) addObject:v6];
    v11 = rbs_connection_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __27__RBSConnection__handshake__block_invoke_245_cold_1();
    }
  }
}

void __27__RBSConnection__handshake__block_invoke_247(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = rbs_connection_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543618;
    v11 = v5;
    v12 = 2114;
    v13 = v6;
    _os_log_impl(&dword_18E8AD000, v7, OS_LOG_TYPE_DEFAULT, "Failed to reconnect assertion %{public}@ with error <%{public}@>", &v10, 0x16u);
  }

  v8 = [*(*(a1 + 32) + 72) objectForKey:v5];
  [v8 _serverInvalidateWithError:v6];

  v9 = *MEMORY[0x1E69E9840];
}

void __27__RBSConnection__handshake__block_invoke_2_251(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(RBSConnection *)*(a1 + 32) _subscribeToProcessDeath:v5 handler:*(*(&v12 + 1) + 8 * v10++)];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (BOOL)isIdentityAnAngel:(id)angel withError:(id *)error
{
  angelCopy = angel;
  if (isIdentityAnAngel_withError__permanentError)
  {
    bOOLValue = 0;
    if (error)
    {
      *error = isIdentityAnAngel_withError__permanentError;
    }
  }

  else
  {
    _connection = [(RBSConnection *)self _connection];
    v10 = [RBSXPCMessage messageForMethod:sel_isIdentityAnAngel_withError_ varguments:angelCopy, 0];
    v11 = objc_opt_class();
    v16 = 0;
    v12 = [(RBSXPCMessage *)v10 invokeOnConnection:_connection withReturnClass:v11 error:&v16];
    v13 = v16;
    v14 = v16;

    if ([v14 rbs_isPermanentFailure])
    {
      objc_storeStrong(&isIdentityAnAngel_withError__permanentError, v13);
    }

    if (error)
    {
      v15 = v14;
      *error = v14;
    }

    bOOLValue = [v12 BOOLValue];
  }

  return bOOLValue;
}

- (id)_initWithConnection:(id)connection
{
  v3 = a2;
  if (connection)
  {
    v32.receiver = connection;
    v32.super_class = RBSConnection;
    connection = objc_msgSendSuper2(&v32, sel_init);
    if (connection)
    {
      v4 = rbs_connection_log();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_18E8AD000, v4, OS_LOG_TYPE_DEFAULT, "Initializing connection", buf, 2u);
      }

      *(connection + 10) = 0;
      *(connection + 12) = 0;
      *(connection + 18) = 0;
      v5 = +[RBSConnection handshakeQueue];
      v6 = *(connection + 8);
      *(connection + 8) = v5;

      v7 = +[RBSConnection connectionQueue];
      v8 = *(connection + 7);
      *(connection + 7) = v7;

      strongToWeakObjectsMapTable = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
      v10 = *(connection + 9);
      *(connection + 9) = strongToWeakObjectsMapTable;

      v11 = [MEMORY[0x1E695DFA8] set];
      v12 = *(connection + 13);
      *(connection + 13) = v11;

      weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
      v14 = *(connection + 10);
      *(connection + 10) = weakObjectsHashTable;

      weakObjectsHashTable2 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
      v16 = *(connection + 14);
      *(connection + 14) = weakObjectsHashTable2;

      v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v18 = *(connection + 15);
      *(connection + 15) = v17;

      v19 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v20 = *(connection + 11);
      *(connection + 11) = v19;

      v21 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v22 = *(connection + 16);
      *(connection + 16) = v21;

      if (v3)
      {
        os_unfair_lock_lock(connection + 10);
        [(RBSConnection *)connection _lock_setConnection:v3];
        *(connection + 18) = 2;
        os_unfair_lock_unlock(connection + 10);
      }

      else
      {
        DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
        CFNotificationCenterAddObserver(DarwinNotifyCenter, connection, __RBSDaemonDidStart, @"com.apple.runningboard.daemonstartup", 0, CFNotificationSuspensionBehaviorCoalesce);
        v24 = *(connection + 7);
        OUTLINED_FUNCTION_2_0();
        v27 = 3221225472;
        v28 = __37__RBSConnection__initWithConnection___block_invoke;
        v29 = &unk_1E7276440;
        connection = connection;
        connectionCopy = connection;
        dispatch_sync(v24, block);
      }
    }
  }

  return connection;
}

+ (id)testConnectionWithConnection:(id)connection
{
  connectionCopy = connection;
  v4 = [[RBSConnection alloc] _initWithConnection:connectionCopy];

  return v4;
}

- (void)registerServiceDelegate:(uint64_t)delegate
{
  v3 = a2;
  if (delegate)
  {
    v4 = *(delegate + 56);
    OUTLINED_FUNCTION_6_0();
    v7 = 3221225472;
    v8 = __41__RBSConnection_registerServiceDelegate___block_invoke;
    v9 = &unk_1E72764D0;
    delegateCopy = delegate;
    v12 = v5;
    v11 = v3;
    dispatch_async(v4, block);
  }
}

- (void)observeProcessAssertionsExpirationWarningWithBlock:(uint64_t)block
{
  v22 = *MEMORY[0x1E69E9840];
  if (block)
  {
    v3 = a2;
    os_unfair_lock_lock((block + 48));
    v4 = [_RBSExpirationWarningClient alloc];
    OUTLINED_FUNCTION_2_0();
    v16 = 3221225472;
    v17 = __68__RBSConnection_observeProcessAssertionsExpirationWarningWithBlock___block_invoke;
    v18 = &unk_1E72764F8;
    blockCopy = block;
    v6 = [(_RBSExpirationWarningClient *)v5 initWithBlock:v3 invalidationBlock:v15];

    [*(block + 112) addObject:v6];
    os_unfair_lock_unlock((block + 48));
    v7 = rbs_general_log();
    if (OUTLINED_FUNCTION_22(v7))
    {
      v20 = 138543362;
      v21 = v6;
      OUTLINED_FUNCTION_16();
      _os_log_impl(v8, v9, v10, v11, v12, 0xCu);
    }
  }

  else
  {
    v6 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)processName:(id)name
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = [RBSXPCMessage messageForMethod:sel_lookupProcessName_error_ varguments:name, 0];
  _connection = [(RBSConnection *)self _connection];
  objc_opt_class();
  OUTLINED_FUNCTION_13();
  v8 = [(RBSXPCMessage *)v4 invokeOnConnection:_connection withReturnClass:v6 error:v7];
  v9 = v13;

  if (v9)
  {
    v10 = rbs_process_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v15 = v9;
      _os_log_error_impl(&dword_18E8AD000, v10, OS_LOG_TYPE_ERROR, "Could not get process name: <%{public}@>", buf, 0xCu);
    }
  }

  v11 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)portForIdentifier:(id)identifier
{
  v22 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v5 = rbs_general_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_23(&dword_18E8AD000, v5, v6, "Fetching port for identifier: %{public}@", buf);
  }

  v7 = [RBSXPCMessage messageForMethod:sel_lookupPortForIdentifier_error_ varguments:identifierCopy, 0];
  _connection = [(RBSConnection *)self _connection];
  OUTLINED_FUNCTION_13();
  v9 = [v7 sendToConnection:_connection error:?];
  v10 = v17;

  v11 = [v9 decodeObjectOfClass:objc_opt_class() forKey:@"return-value"];
  v12 = rbs_general_log();
  v13 = v12;
  if (v10)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      *buf = 138543618;
      v19 = v11;
      v20 = 2114;
      v21 = v10;
      _os_log_fault_impl(&dword_18E8AD000, v13, OS_LOG_TYPE_FAULT, "Received port for identifier response: <%{public}@> with error:%{public}@", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v19 = v11;
    OUTLINED_FUNCTION_23(&dword_18E8AD000, v13, v14, "Received port for identifier response: <%{public}@>", buf);
  }

  v15 = *MEMORY[0x1E69E9840];

  return v11;
}

- (void)_subscribeToProcessDeath:(void *)death handler:
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a2;
  deathCopy = death;
  v7 = deathCopy;
  if (!self)
  {
    goto LABEL_21;
  }

  if (!v5)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:sel__subscribeToProcessDeath_handler_ object:self file:@"RBSConnection.m" lineNumber:565 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];

    if (v7)
    {
      goto LABEL_4;
    }

LABEL_23:
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:sel__subscribeToProcessDeath_handler_ object:self file:@"RBSConnection.m" lineNumber:566 description:{@"Invalid parameter not satisfying: %@", @"handler"}];

    goto LABEL_4;
  }

  if (!deathCopy)
  {
    goto LABEL_23;
  }

LABEL_4:
  os_unfair_lock_lock((self + 40));
  array = [*(self + 120) objectForKey:v5];
  if (!array)
  {
    array = [MEMORY[0x1E695DF70] array];
    [*(self + 120) setObject:array forKey:v5];
    v9 = rbs_process_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      OUTLINED_FUNCTION_19();
      OUTLINED_FUNCTION_23(&dword_18E8AD000, v9, v10, "Subscribing to death of process %{public}@", buf);
    }
  }

  v11 = MEMORY[0x193AD5470](v7);
  [array addObject:v11];

  os_unfair_lock_unlock((self + 40));
  v12 = [RBSXPCMessage messageForMethod:sel_subscribeToProcessDeath_error_ varguments:v5, 0];
  _connection = [(RBSConnection *)self _connection];
  objc_opt_class();
  OUTLINED_FUNCTION_13();
  v16 = [(RBSXPCMessage *)v12 invokeOnConnection:_connection withReturnClass:v14 error:v15];
  v17 = v29;

  if (v16 || ([v17 domain], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "isEqualToString:", @"RBSRequestErrorDomain"), v18, v19))
  {
    v20 = rbs_process_log();
    v21 = v20;
    if (v17)
    {
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        OUTLINED_FUNCTION_19();
        v31 = 2114;
        v32 = v17;
        _os_log_error_impl(&dword_18E8AD000, v21, OS_LOG_TYPE_ERROR, "Error subscribing to death of process %{public}@: <%{public}@>", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      OUTLINED_FUNCTION_19();
      OUTLINED_FUNCTION_23(&dword_18E8AD000, v21, v22, "Process %{public}@ is already exited, no need to subscribe", buf);
    }

    os_unfair_lock_lock((self + 40));
    v23 = MEMORY[0x193AD5470](v7);
    v24 = [array indexOfObjectIdenticalTo:v23];

    if (v24 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v25 = MEMORY[0x193AD5470](v7);
      [array removeObjectIdenticalTo:v25];

      if (![array count])
      {
        [*(self + 120) removeObjectForKey:v5];
      }

      (v7)[2](v7, v16, v17);
    }

    os_unfair_lock_unlock((self + 40));
  }

LABEL_21:
  v26 = *MEMORY[0x1E69E9840];
}

- (void)unsubscribeProcessStateMonitor:(id)monitor configuration:(id)configuration
{
  v16 = *MEMORY[0x1E69E9840];
  monitorCopy = monitor;
  configurationCopy = configuration;
  os_unfair_lock_lock(&self->_lock);
  if ([(NSHashTable *)self->_processMonitors containsObject:monitorCopy])
  {
    [(NSHashTable *)self->_processMonitors removeObject:monitorCopy];
  }

  os_unfair_lock_unlock(&self->_lock);
  v8 = rbs_monitor_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v15 = configurationCopy;
    _os_log_impl(&dword_18E8AD000, v8, OS_LOG_TYPE_DEFAULT, "unsubscribing configuration of monitor %{public}@", buf, 0xCu);
  }

  [(RBSConnection *)self cleanOutStateIfNeeded];
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(configurationCopy, "identifier")}];
  v10 = [RBSXPCMessage messageForMethod:sel_async_unsubscribeFromProcessStateChangesWithIdentifier_ varguments:v9, 0];

  _connection = [(RBSConnection *)self _connection];
  v12 = [v10 sendToConnection:_connection error:0];

  v13 = *MEMORY[0x1E69E9840];
}

- (void)intendToExit:(id)exit withStatus:(id)status
{
  v18 = *MEMORY[0x1E69E9840];
  exitCopy = exit;
  v7 = [RBSXPCMessage messageForMethod:sel_void_intendToExit_withStatus_ varguments:exitCopy, status, 0];
  _connection = [(RBSConnection *)self _connection];
  v13 = 0;
  v9 = [v7 sendToConnection:_connection error:&v13];
  v10 = v13;

  if (v10)
  {
    v11 = rbs_process_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v15 = exitCopy;
      v16 = 2114;
      v17 = v10;
      _os_log_error_impl(&dword_18E8AD000, v11, OS_LOG_TYPE_ERROR, "Could not set intended exit for %{public}@ because %{public}@", buf, 0x16u);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_lock_setConnection:(uint64_t)connection
{
  v4 = a2;
  if (connection)
  {
    os_unfair_lock_assert_owner((connection + 40));
    objc_storeStrong((connection + 8), a2);
    xpc_connection_set_target_queue(*(connection + 8), *(connection + 56));
    v5 = *(connection + 8);
    OUTLINED_FUNCTION_2_0();
    v10 = 3221225472;
    v11 = __37__RBSConnection__lock_setConnection___block_invoke;
    v12 = &unk_1E7276540;
    connectionCopy = connection;
    xpc_connection_set_event_handler(v6, handler);
    xpc_connection_activate(*(connection + 8));
    v7 = *(connection + 8);
    v8 = xpc_dictionary_create(0, 0, 0);
    xpc_connection_send_message(v7, v8);
  }
}

- (void)_disconnect
{
  if (self)
  {
    v2 = OUTLINED_FUNCTION_17(self);
    os_unfair_lock_lock(v2);
    v3 = *(v1 + 8);
    if (v3)
    {
      xpc_connection_set_event_handler(v3, &__block_literal_global_260);
      xpc_connection_cancel(*(v1 + 8));
      v4 = *(v1 + 8);
      *(v1 + 8) = 0;

      v5 = *(v1 + 16);
      *(v1 + 16) = 0;
    }

    *(v1 + 144) = 3;

    os_unfair_lock_unlock((v1 + 40));
  }
}

- (BOOL)invalidateAssertionWithIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  os_unfair_lock_lock(&self->_assertionLock);
  [(NSMapTable *)self->_acquiredAssertionsByIdentifier removeObjectForKey:identifierCopy];
  os_unfair_lock_unlock(&self->_assertionLock);
  v7 = &selRef_async_invalidateAssertionWithIdentifier_;
  if (error)
  {
    v7 = &selRef_void_invalidateAssertionWithIdentifier_error_;
  }

  v8 = [RBSXPCMessage messageForMethod:*v7 varguments:identifierCopy, 0];

  _connection = [(RBSConnection *)self _connection];
  OUTLINED_FUNCTION_13();
  v11 = [(RBSXPCMessage *)v8 invokeOnConnection:_connection withReturnClass:0 error:v10];
  v12 = v15;

  if (error)
  {
    v13 = v12;
    *error = v12;
  }

  return v12 == 0;
}

- (void)_handleDaemonDidStart
{
  if (self)
  {
    v3 = OUTLINED_FUNCTION_17(self);
    os_unfair_lock_lock(v3);
    if (*(v1 + 144) == 3)
    {
      v4 = rbs_connection_log();
      if (OUTLINED_FUNCTION_22(v4))
      {
        OUTLINED_FUNCTION_16();
        _os_log_impl(v5, v6, v7, v8, v9, 2u);
      }

      *(v1 + 144) = 0;
    }

    os_unfair_lock_unlock((v1 + 40));
  }
}

void __41__RBSConnection_registerServiceDelegate___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_10();
  v3 = v2;
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = *(*v1 + 32);
  [v4 handleFailureInMethod:*(v3 + 48) object:v5 file:*(v3 + 40) lineNumber:? description:?];

  *v0 = *v1;
}

- (void)acquireAssertion:error:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_7_0(&dword_18E8AD000, v0, v1, "Adding assertion %{public}@ to dictionary", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)acquireAssertion:(_BYTE *)a1 error:(_BYTE *)a2 .cold.2(_BYTE *a1, _BYTE *a2)
{
  *a1 = 0;
  *a2 = 0;
  OUTLINED_FUNCTION_14();
  _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
}

- (void)executeLaunchRequest:.cold.1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void __prewarm_for_launch(RBSLaunchContext *__strong)"];
  [v0 handleFailureInFunction:v1 file:@"RBSConnection.m" lineNumber:353 description:{@"%s", dlerror()}];

  __break(1u);
}

void __30__RBSConnection_handleForKey___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_11(&dword_18E8AD000, v0, v1, "This connection is not supposed to receive any messages got unknown: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __30__RBSConnection_handleForKey___block_invoke_cold_2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_11(&dword_18E8AD000, v0, v1, "This connection is not supposed to receive any messages, got connection: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __30__RBSConnection_handleForKey___block_invoke_cold_3()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_11(&dword_18E8AD000, v0, v1, "This connection is not supposed to receive any messages, got dictionary: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)handleForPredicate:(void *)a3 error:(uint64_t *)a4 .cold.1(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v9 = [RBSXPCMessage messageForMethod:sel_lookupHandleForPredicate_error_ varguments:a1, 0];
  v7 = [(RBSConnection *)a2 _connection];
  v8 = objc_opt_class();
  *a4 = [(RBSXPCMessage *)v9 invokeOnConnection:v7 withReturnClass:v8 error:a3];
}

- (void)identifiersForStateCaptureSubsystems:.cold.1()
{
  OUTLINED_FUNCTION_15();
  v4 = [RBSXPCMessage messageForMethod:sel_identifiersForStateCaptureSubsystemsWithError_ varguments:0];
  v5 = [(RBSConnection *)v3 _connection];
  objc_opt_class();
  objc_opt_class();
  v6 = OUTLINED_FUNCTION_8();
  *v1 = [(RBSXPCMessage *)v6 invokeOnConnection:v7 withReturnCollectionClass:v8 entryClass:v9 error:v10];
  v11 = *v2;

  if (v11)
  {
    if (v0)
    {
      v12 = v11;
      *v0 = v11;
    }

    OUTLINED_FUNCTION_20([v11 rbs_isPermanentFailure], &identifiersForStateCaptureSubsystems__permanentError);
  }
}

- (void)preventLaunchPredicatesWithError:.cold.1()
{
  OUTLINED_FUNCTION_15();
  v4 = [RBSXPCMessage messageForMethod:sel_preventLaunchPredicatesWithError_ varguments:0];
  v5 = [(RBSConnection *)v3 _connection];
  objc_opt_class();
  objc_opt_class();
  v6 = OUTLINED_FUNCTION_8();
  *v1 = [(RBSXPCMessage *)v6 invokeOnConnection:v7 withReturnCollectionClass:v8 entryClass:v9 error:v10];
  v11 = *v2;

  if (v11)
  {
    if (v0)
    {
      v12 = v11;
      *v0 = v11;
    }

    OUTLINED_FUNCTION_20([v11 rbs_isPermanentFailure], &preventLaunchPredicatesWithError__permanentError);
  }
}

- (void)saveEndowment:(uint64_t)a1 withError:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"RBSConnection.m" lineNumber:916 description:{@"Invalid parameter not satisfying: %@", @"savedEndowment"}];
}

- (void)async_didChangeInheritances:completion:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_7_0(&dword_18E8AD000, v0, v1, "didChangeInheritances: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)async_assertionWillInvalidate:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_7_0(&dword_18E8AD000, v0, v1, "Assertion %{public}@ will invalidate", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_handleMessage:(const char *)a1 .cold.2(const char *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_handleMessage:(NSObject *)a3 .cold.3(uint64_t a1, SEL aSelector, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 24);
  v5 = NSStringFromSelector(aSelector);
  v7 = 138543618;
  v8 = v4;
  v9 = 2114;
  v10 = v5;
  _os_log_debug_impl(&dword_18E8AD000, a3, OS_LOG_TYPE_DEBUG, "PERF: %{public}@ Received message from runningboardd: %{public}@", &v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)_handleMessage:(void *)a1 .cold.4(void *a1, uint64_t a2)
{
  *a2 = 138543362;
  *(a2 + 4) = a1;
  OUTLINED_FUNCTION_14();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

- (void)_handleMessage:(void *)activity_block .cold.5(void *activity_block, uint64_t a2)
{
  *activity_block = MEMORY[0x1E69E9820];
  activity_block[1] = 3221225472;
  activity_block[2] = __32__RBSConnection__handleMessage___block_invoke_206;
  activity_block[3] = &unk_1E7276440;
  activity_block[4] = a2;
  _os_activity_initiate(&dword_18E8AD000, "willExpireAssertionsSoon", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

void __32__RBSConnection__handleMessage___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_10();
  v1 = *MEMORY[0x1E69E9840];
  v3 = OUTLINED_FUNCTION_18(v2);
  NSStringFromSelector(v3);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x1E69E9840];
}

void __32__RBSConnection__handleMessage___block_invoke_2_209_cold_1()
{
  OUTLINED_FUNCTION_10();
  v8 = *MEMORY[0x1E69E9840];
  NSStringFromSelector(*(v1 + 56));
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

void __27__RBSConnection__handshake__block_invoke_cold_1(_BYTE *a1, _BYTE *a2)
{
  *a1 = 0;
  *a2 = 0;
  OUTLINED_FUNCTION_14();
  _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
}

void __27__RBSConnection__handshake__block_invoke_cold_2()
{
  OUTLINED_FUNCTION_10();
  v3 = v2;
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:*(v3 + 64) object:*v1 file:@"RBSConnection.m" lineNumber:1428 description:{@"BUG IN RUNNINGBOARD %d RunningBoard handshakes failed", v0}];

  abort();
}

void __27__RBSConnection__handshake__block_invoke_cold_3(uint64_t a1, void *a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:*(a1 + 64) object:*a2 file:@"RBSConnection.m" lineNumber:1465 description:@"No process identity was resolved!"];
}

void __27__RBSConnection__handshake__block_invoke_cold_5(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = HIDWORD(*(*a1 + 72));
  OUTLINED_FUNCTION_7_0(&dword_18E8AD000, a2, a3, "Replacing old assertions %{public}@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void __27__RBSConnection__handshake__block_invoke_cold_6(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *(*a1 + 136);
  v5 = 138543618;
  v6 = v3;
  v7 = 2114;
  v8 = a2;
  _os_log_fault_impl(&dword_18E8AD000, log, OS_LOG_TYPE_FAULT, "managedEndpointByLaunchIdentifier mismatch : previous=%{public}@ new=%{public}@", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

void __27__RBSConnection__handshake__block_invoke_245_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_14();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

@end