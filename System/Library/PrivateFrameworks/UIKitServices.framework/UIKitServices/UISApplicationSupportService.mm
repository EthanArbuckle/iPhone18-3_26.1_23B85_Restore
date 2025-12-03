@interface UISApplicationSupportService
+ (id)sharedInstance;
- (BOOL)hasFinishedLaunching;
- (UISApplicationInitializationContext)defaultContext;
- (UISApplicationSupportService)init;
- (UISApplicationSupportService)initWithCalloutQueue:(id)queue;
- (id)_delegate;
- (id)_initWithDelegate:(id)delegate targetQueue:(id)queue;
- (void)_pendRequestUntilLaunch:(id)launch;
- (void)_setDelegate:(id)delegate;
- (void)dealloc;
- (void)destroyScenesPersistentIdentifiers:(id)identifiers animationType:(id)type destroySessions:(id)sessions completion:(id)completion;
- (void)initializeClientWithParameters:(id)parameters completion:(id)completion;
- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context;
- (void)requestPasscodeUnlockUIWithCompletion:(id)completion;
- (void)setDefaultContext:(id)context;
- (void)start;
@end

@implementation UISApplicationSupportService

+ (id)sharedInstance
{
  if (qword_1ED51C000 != -1)
  {
    dispatch_once(&qword_1ED51C000, &__block_literal_global_13);
  }

  v3 = _MergedGlobals_17;

  return v3;
}

uint64_t __46__UISApplicationSupportService_sharedInstance__block_invoke()
{
  _MergedGlobals_17 = [[UISApplicationSupportService alloc] _initWithDelegate:0 targetQueue:0];

  return MEMORY[0x1EEE66BB8]();
}

- (UISApplicationSupportService)init
{
  v3 = +[UISApplicationSupportService sharedInstance];
  [(UISApplicationSupportService *)v3 start];

  return v3;
}

- (UISApplicationSupportService)initWithCalloutQueue:(id)queue
{
  queueCopy = queue;
  v5 = +[UISApplicationSupportService sharedInstance];
  targetQueue = v5->_targetQueue;
  v5->_targetQueue = queueCopy;

  [(UISApplicationSupportService *)v5 start];
  return v5;
}

- (id)_initWithDelegate:(id)delegate targetQueue:(id)queue
{
  delegateCopy = delegate;
  queueCopy = queue;
  v24.receiver = self;
  v24.super_class = UISApplicationSupportService;
  v9 = [(UISApplicationSupportService *)&v24 init];
  v10 = v9;
  if (v9)
  {
    v9->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v9->_targetQueue, queue);
    v11 = +[UISApplicationInitializationContext defaultContext];
    lock_defaultContext = v10->_lock_defaultContext;
    v10->_lock_defaultContext = v11;

    v13 = MEMORY[0x1E698F4B8];
    v18 = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = __62__UISApplicationSupportService__initWithDelegate_targetQueue___block_invoke;
    v21 = &unk_1E74590E0;
    v23 = a2;
    v14 = v10;
    v22 = v14;
    v15 = [v13 listenerWithConfigurator:&v18];
    listener = v14->_listener;
    v14->_listener = v15;

    if (delegateCopy)
    {
      [(UISApplicationSupportService *)v14 _setDelegate:delegateCopy, v18, v19, v20, v21];
    }
  }

  return v10;
}

void __62__UISApplicationSupportService__initWithDelegate_targetQueue___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E698F508];
  v4 = a2;
  v9 = [v3 bootstrapConfiguration];
  v5 = [v9 domainsContainingServiceIdentifier:0x1F0A7D3B8];
  if ([v5 count] != 1)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"UISApplicationSupportService.m" lineNumber:90 description:{@"must have one and only one domain specify %@ : domains=%@", 0x1F0A7D3B8, v5}];
  }

  v6 = [v5 anyObject];
  v7 = [v6 identifier];
  [v4 setDomain:v7];

  [v4 setService:0x1F0A7D3B8];
  [v4 setDelegate:*(a1 + 32)];
}

- (void)dealloc
{
  [(BSServiceConnectionListener *)self->_listener invalidate];
  v3.receiver = self;
  v3.super_class = UISApplicationSupportService;
  [(UISApplicationSupportService *)&v3 dealloc];
}

- (void)start
{
  os_unfair_lock_lock(&self->_lock);
  if (!self->_lock_started)
  {
    self->_lock_started = 1;
    if (!self->_targetQueue)
    {
      v3 = MEMORY[0x1E698F4D0];
      userInteractive = [MEMORY[0x1E698F500] userInteractive];
      v5 = [v3 queueWithName:@"UISApplicationSupportService" serviceQuality:userInteractive];
      targetQueue = self->_targetQueue;
      self->_targetQueue = v5;
    }

    [(BSServiceConnectionListener *)self->_listener activate];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __37__UISApplicationSupportService_start__block_invoke;
    block[3] = &unk_1E7458DB0;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  os_unfair_lock_unlock(&self->_lock);
}

void __37__UISApplicationSupportService_start__block_invoke(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 8));
  *(*(a1 + 32) + 57) = 1;
  v2 = *(*(a1 + 32) + 48);
  v3 = *(a1 + 32);
  v4 = *(v3 + 48);
  *(v3 + 48) = 0;

  os_unfair_lock_unlock((*(a1 + 32) + 8));
  if (v2)
  {
    v5 = *(*(a1 + 32) + 24);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __37__UISApplicationSupportService_start__block_invoke_2;
    v6[3] = &unk_1E7458DB0;
    v7 = v2;
    [v5 performAsync:v6];
  }
}

void __37__UISApplicationSupportService_start__block_invoke_2(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v1);
        }

        (*(*(*(&v6 + 1) + 8 * v5) + 16))(*(*(&v6 + 1) + 8 * v5));
        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

- (UISApplicationInitializationContext)defaultContext
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lock_defaultContext;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setDefaultContext:(id)context
{
  contextCopy = context;
  os_unfair_lock_lock(&self->_lock);
  if (contextCopy)
  {
    v4 = [contextCopy copy];
  }

  else
  {
    v4 = +[UISApplicationInitializationContext defaultContext];
  }

  lock_defaultContext = self->_lock_defaultContext;
  self->_lock_defaultContext = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)hasFinishedLaunching
{
  os_unfair_lock_lock(&self->_lock);
  lock_finishedLaunching = self->_lock_finishedLaunching;
  os_unfair_lock_unlock(&self->_lock);
  return lock_finishedLaunching;
}

- (id)_delegate
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lock_delegate;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)_setDelegate:(id)delegate
{
  delegateCopy = delegate;
  if (!delegateCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UISApplicationSupportService.m" lineNumber:183 description:{@"Invalid parameter not satisfying: %@", @"delegate != nil"}];
  }

  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_delegate != delegateCopy)
  {
    objc_storeStrong(&self->_lock_delegate, delegate);
    if (objc_opt_respondsToSelector())
    {
      v6 = 2;
    }

    else
    {
      v6 = 0;
    }

    *&self->_lock_delegateFlags = *&self->_lock_delegateFlags & 0xFD | v6;
    if (objc_opt_respondsToSelector())
    {
      v7 = 4;
    }

    else
    {
      v7 = 0;
    }

    *&self->_lock_delegateFlags = *&self->_lock_delegateFlags & 0xFB | v7;
    if (objc_opt_respondsToSelector())
    {
      v8 = 8;
    }

    else
    {
      v8 = 0;
    }

    *&self->_lock_delegateFlags = *&self->_lock_delegateFlags & 0xF7 | v8;
    if (objc_opt_respondsToSelector())
    {
      v9 = 16;
    }

    else
    {
      v9 = 0;
    }

    *&self->_lock_delegateFlags = *&self->_lock_delegateFlags & 0xEF | v9;
    if (objc_opt_respondsToSelector())
    {
      v10 = 32;
    }

    else
    {
      v10 = 0;
    }

    *&self->_lock_delegateFlags = *&self->_lock_delegateFlags & 0xDF | v10;
    if (objc_opt_respondsToSelector())
    {
      v11 = 64;
    }

    else
    {
      v11 = 0;
    }

    *&self->_lock_delegateFlags = *&self->_lock_delegateFlags & 0xBF | v11;
    if (objc_opt_respondsToSelector())
    {
      v12 = 0x80;
    }

    else
    {
      v12 = 0;
    }

    *&self->_lock_delegateFlags = v12 & 0x80 | *&self->_lock_delegateFlags & 0x7F;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_pendRequestUntilLaunch:(id)launch
{
  launchCopy = launch;
  [(BSServiceQueue *)self->_targetQueue assertBarrierOnQueue];
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_finishedLaunching)
  {
    os_unfair_lock_unlock(&self->_lock);
    launchCopy[2]();
  }

  else
  {
    lock_launchPendedRequests = self->_lock_launchPendedRequests;
    if (!lock_launchPendedRequests)
    {
      v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v6 = self->_lock_launchPendedRequests;
      self->_lock_launchPendedRequests = v5;

      lock_launchPendedRequests = self->_lock_launchPendedRequests;
    }

    v7 = [launchCopy copy];
    v8 = MEMORY[0x19A8C69E0]();
    [(NSMutableArray *)lock_launchPendedRequests addObject:v8];

    os_unfair_lock_unlock(&self->_lock);
  }
}

- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context
{
  listenerCopy = listener;
  connectionCopy = connection;
  contextCopy = context;
  v11 = [MEMORY[0x1E698F470] interfaceWithIdentifier:0x1F0A7D3B8];
  v12 = [MEMORY[0x1E698E710] protocolForProtocol:&unk_1F0A8B3E8];
  [v11 setServer:v12];

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __74__UISApplicationSupportService_listener_didReceiveConnection_withContext___block_invoke;
  v19[3] = &unk_1E7458E98;
  v13 = v11;
  v20 = v13;
  selfCopy = self;
  [connectionCopy configureConnection:v19];
  v23 = 0;
  v24 = &v23;
  v25 = 0x2050000000;
  v14 = qword_1ED51C008;
  v26 = qword_1ED51C008;
  if (!qword_1ED51C008)
  {
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __getFBProcessManagerClass_block_invoke;
    v22[3] = &unk_1E7459080;
    v22[4] = &v23;
    __getFBProcessManagerClass_block_invoke(v22);
    v14 = v24[3];
  }

  v15 = v14;
  _Block_object_dispose(&v23, 8);
  sharedInstance = [v14 sharedInstance];
  remoteProcess = [connectionCopy remoteProcess];
  v18 = [sharedInstance registerProcessForHandle:remoteProcess];

  [connectionCopy activate];
}

void __74__UISApplicationSupportService_listener_didReceiveConnection_withContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setInterface:v3];
  [v4 setInterfaceTarget:*(a1 + 40)];
  [v4 setQueue:*(*(a1 + 40) + 24)];
  [v4 setInterruptionHandler:&__block_literal_global_92];
  [v4 setInvalidationHandler:&__block_literal_global_94];
}

- (void)initializeClientWithParameters:(id)parameters completion:(id)completion
{
  v75 = *MEMORY[0x1E69E9840];
  parametersCopy = parameters;
  completionCopy = completion;
  os_unfair_lock_lock(&self->_lock);
  lock_finishedLaunching = self->_lock_finishedLaunching;
  v9 = self->_lock_delegate;
  if (!v9)
  {
    os_unfair_lock_unlock(&self->_lock);
    goto LABEL_5;
  }

  lock_delegateFlags = self->_lock_delegateFlags;
  if ((lock_delegateFlags & 0x14) != 0)
  {
    os_unfair_lock_unlock(&self->_lock);
    goto LABEL_8;
  }

  os_unfair_lock_unlock(&self->_lock);
  if ((lock_delegateFlags & 0x28) == 0)
  {
LABEL_5:
    if (completionCopy)
    {
      v11 = MEMORY[0x1E696AEC0];
      processInfo = [MEMORY[0x1E696AE30] processInfo];
      processName = [processInfo processName];
      v14 = [v11 stringWithFormat:@"%@ does not implement this service. Returning default context.", processName];

      defaultContext = [(UISApplicationSupportService *)self defaultContext];
      v16 = MEMORY[0x1E696ABC0];
      v71 = *MEMORY[0x1E696A588];
      v72 = v14;
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v72 forKeys:&v71 count:1];
      v18 = [v16 errorWithDomain:@"UISApplicationSupportService" code:1 userInfo:v17];
      completionCopy[2](completionCopy, defaultContext, v18);
    }

    goto LABEL_48;
  }

LABEL_8:
  v54 = lock_finishedLaunching;
  v59 = v9;
  v19 = MEMORY[0x1E698E630];
  v69[0] = MEMORY[0x1E69E9820];
  v69[1] = 3221225472;
  v69[2] = __74__UISApplicationSupportService_initializeClientWithParameters_completion___block_invoke;
  v69[3] = &unk_1E7459698;
  v69[4] = self;
  v70 = completionCopy;
  v20 = [v19 sentinelWithCompletion:v69];
  currentContext = [MEMORY[0x1E698F490] currentContext];
  remoteProcess = [currentContext remoteProcess];

  v60[0] = MEMORY[0x1E69E9820];
  v60[1] = 3221225472;
  v60[2] = __74__UISApplicationSupportService_initializeClientWithParameters_completion___block_invoke_111;
  v60[3] = &unk_1E74596E8;
  v66 = (lock_delegateFlags & 8) != 0;
  v23 = v9;
  v61 = v23;
  selfCopy = self;
  v24 = remoteProcess;
  v63 = v24;
  v64 = parametersCopy;
  v58 = v20;
  v65 = v58;
  v67 = (lock_delegateFlags & 4) != 0;
  v25 = v24;
  v68 = (lock_delegateFlags & 0x10) != 0;
  v26 = MEMORY[0x19A8C69E0](v60);
  if ((lock_delegateFlags & 2) != 0 && [(UISApplicationSupportServiceDelegate *)v23 service:self overrideClientInitialization:v24])
  {
    v26[2](v26);
    v27 = v58;
  }

  else
  {
    v55 = v26;
    v28 = MEMORY[0x1E69C75D0];
    v29 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v24, "pid")}];
    v30 = [v28 handleForIdentifier:v29 error:0];

    identity = [v30 identity];
    hostIdentifier = [identity hostIdentifier];

    if (hostIdentifier)
    {
      while (1)
      {
        v33 = [MEMORY[0x1E69C75D0] handleForIdentifier:hostIdentifier error:0];
        if (!v33)
        {
          break;
        }

        v34 = v33;

        identity2 = [v34 identity];
        hostIdentifier = [identity2 hostIdentifier];

        v30 = v34;
        if (!hostIdentifier)
        {
          goto LABEL_17;
        }
      }
    }

    v34 = v30;
LABEL_17:
    v56 = completionCopy;
    v57 = parametersCopy;
    identity3 = [v34 identity];
    v37 = [v34 pid];
    v38 = getpid();
    if ([identity3 isApplication])
    {
      isEmbeddedApplication = 1;
    }

    else
    {
      isEmbeddedApplication = [identity3 isEmbeddedApplication];
    }

    if (v37 == v38 && (isEmbeddedApplication & 1) != 0 || ![identity3 isXPCService])
    {
      v47 = 0;
    }

    else
    {
      v52 = v25;
      bundle = [v34 bundle];
      path = [bundle path];

      if (path)
      {
        v51 = identity3;
        v53 = *MEMORY[0x1E6982D80];
        v42 = *MEMORY[0x1E6982CB0];
        while (1)
        {
          if ([path isEqualToString:@"/"])
          {
LABEL_29:
            v47 = 0;
            goto LABEL_33;
          }

          pathExtension = [path pathExtension];
          if (pathExtension)
          {
            v44 = [MEMORY[0x1E6982C40] typeWithFilenameExtension:pathExtension conformingToType:v53];
            v45 = [v44 isEqual:v42];

            if (v45)
            {
              break;
            }
          }

          stringByDeletingLastPathComponent = [path stringByDeletingLastPathComponent];

          path = stringByDeletingLastPathComponent;
          if (!stringByDeletingLastPathComponent)
          {
            goto LABEL_29;
          }
        }

        v47 = 1;
LABEL_33:
        identity3 = v51;
      }

      else
      {
        v47 = 0;
      }

      v25 = v52;
    }

    if (v37 == v38)
    {
      v48 = 1;
    }

    else
    {
      v48 = isEmbeddedApplication;
    }

    if ((v48 & 1) != 0 || v47)
    {
      completionCopy = v56;
      parametersCopy = v57;
      v26 = v55;
      if (v54)
      {
        v55[2](v55);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          if (v34)
          {
            v50 = v34;
          }

          else
          {
            v50 = v25;
          }

          *buf = 138543362;
          v74 = v50;
          _os_log_error_impl(&dword_195FF3000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[UISApplicationSupportService] Client connected before we finished launching: %{public}@)", buf, 0xCu);
        }

        [(UISApplicationSupportService *)self _pendRequestUntilLaunch:v55];
      }

      v27 = v58;
    }

    else
    {
      defaultContext2 = [(UISApplicationSupportService *)self defaultContext];
      v27 = v58;
      [v58 signalWithContext:defaultContext2];

      completionCopy = v56;
      parametersCopy = v57;
      v26 = v55;
    }

    v9 = v59;
  }

LABEL_48:
}

void __74__UISApplicationSupportService_initializeClientWithParameters_completion___block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 context];
  if (NSClassFromString(&cfstr_Uisapplication_25.isa))
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = v6;
  if (!v4 || v6)
  {

    if (v7)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v8 = BSLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v22 = "[signal context]";
      v23 = 2082;
      v24 = "UISApplicationInitializationContext";
      _os_log_impl(&dword_195FF3000, v8, OS_LOG_TYPE_DEFAULT, "BSSafeCast: %{public}s was not of expected class %{public}s", buf, 0x16u);
    }
  }

  v7 = [*(a1 + 32) defaultContext];
LABEL_13:
  if ([v3 isFailed])
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      v17 = [MEMORY[0x1E696AE30] processInfo];
      v18 = [v17 processName];
      *buf = 138543362;
      v22 = v18;
      _os_log_fault_impl(&dword_195FF3000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "%{public}@ dropped the initialize-client request on the floor.", buf, 0xCu);
    }

    v9 = MEMORY[0x1E696AEC0];
    v10 = [MEMORY[0x1E696AE30] processInfo];
    v11 = [v10 processName];
    v12 = [v9 stringWithFormat:@"%@ dropped the initialize-client request on the floor.", v11];

    v13 = MEMORY[0x1E696ABC0];
    v19 = *MEMORY[0x1E696A588];
    v20 = v12;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v15 = [v13 errorWithDomain:@"UISApplicationSupportService" code:1 userInfo:v14];
  }

  else
  {
    v15 = 0;
  }

  v16 = *(a1 + 40);
  if (v16)
  {
    (*(v16 + 16))(v16, v7, v15);
  }
}

void __74__UISApplicationSupportService_initializeClientWithParameters_completion___block_invoke_111(uint64_t a1)
{
  if (*(a1 + 72) == 1)
  {
    v2 = [*(a1 + 32) service:*(a1 + 40) initializeClient:*(a1 + 48) withParameters:*(a1 + 56)];
LABEL_5:
    v3 = v2;
    v9 = v2;
    v4 = *(a1 + 64);
    goto LABEL_6;
  }

  if (*(a1 + 73) == 1)
  {
    v2 = [*(a1 + 32) service:*(a1 + 40) initializeClient:*(a1 + 48)];
    goto LABEL_5;
  }

  v5 = *(a1 + 32);
  if (*(a1 + 74) == 1)
  {
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __74__UISApplicationSupportService_initializeClientWithParameters_completion___block_invoke_2;
    v11[3] = &unk_1E74596C0;
    v12 = *(a1 + 64);
    [v5 service:v6 initializeClient:v7 withCompletion:v11];

    return;
  }

  v8 = [*(a1 + 48) auditToken];
  v9 = [v5 applicationInitializationContextForClient:v8];

  v4 = *(a1 + 64);
  v3 = v9;
LABEL_6:
  [v4 signalWithContext:{v3, v9}];
}

- (void)requestPasscodeUnlockUIWithCompletion:(id)completion
{
  v27[1] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  os_unfair_lock_lock(&self->_lock);
  lock_finishedLaunching = self->_lock_finishedLaunching;
  v6 = self->_lock_delegate;
  if (!v6)
  {
    os_unfair_lock_unlock(&self->_lock);
    if (!completionCopy)
    {
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  lock_delegateFlags = self->_lock_delegateFlags;
  os_unfair_lock_unlock(&self->_lock);
  if ((lock_delegateFlags & 0x40) != 0 && lock_finishedLaunching)
  {
    v8 = MEMORY[0x1E698E630];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __70__UISApplicationSupportService_requestPasscodeUnlockUIWithCompletion___block_invoke;
    v24[3] = &unk_1E7459710;
    v25 = completionCopy;
    v9 = [v8 sentinelWithCompletion:v24];
    currentContext = [MEMORY[0x1E698F490] currentContext];
    remoteProcess = [currentContext remoteProcess];
    auditToken = [remoteProcess auditToken];

    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __70__UISApplicationSupportService_requestPasscodeUnlockUIWithCompletion___block_invoke_2;
    v22[3] = &unk_1E7459738;
    v23 = v9;
    v13 = v9;
    [(UISApplicationSupportServiceDelegate *)v6 requestPasscodeUnlockUIForClient:auditToken withCompletion:v22];

    v14 = v25;
LABEL_12:

    goto LABEL_13;
  }

  if (completionCopy)
  {
    if ((lock_delegateFlags & 0x40) != 0)
    {
      v15 = @"%@ has not yet finished launching.";
LABEL_11:
      v16 = MEMORY[0x1E696AEC0];
      processInfo = [MEMORY[0x1E696AE30] processInfo];
      processName = [processInfo processName];
      v14 = [v16 stringWithFormat:v15, processName];

      v19 = MEMORY[0x1E696ABC0];
      v26 = *MEMORY[0x1E696A588];
      v27[0] = v14;
      v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];
      v21 = [v19 errorWithDomain:@"UISApplicationSupportService" code:1 userInfo:v20];
      (*(completionCopy + 2))(completionCopy, MEMORY[0x1E695E110], v21);

      goto LABEL_12;
    }

LABEL_10:
    v15 = @"%@ does not implement this service.";
    goto LABEL_11;
  }

LABEL_13:
}

void __70__UISApplicationSupportService_requestPasscodeUnlockUIWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 context];
  v5 = v3;
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = MEMORY[0x1E695E110];
  }

  (*(v2 + 16))(v2, v4, 0);
}

void __70__UISApplicationSupportService_requestPasscodeUnlockUIWithCompletion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithBool:a2];
  [v2 signalWithContext:v3];
}

- (void)destroyScenesPersistentIdentifiers:(id)identifiers animationType:(id)type destroySessions:(id)sessions completion:(id)completion
{
  v41[1] = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  typeCopy = type;
  sessionsCopy = sessions;
  completionCopy = completion;
  if (![identifiersCopy count])
  {
    v26 = MEMORY[0x1E696ABC0];
    v40 = *MEMORY[0x1E696A588];
    v41[0] = @"No persistent scene identifiers specified.";
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:&v40 count:1];
    v25 = [v26 errorWithDomain:@"UISApplicationSupportService" code:2 userInfo:v15];
    completionCopy[2](completionCopy, MEMORY[0x1E695E110], v25);
    goto LABEL_13;
  }

  os_unfair_lock_lock(&self->_lock);
  lock_finishedLaunching = self->_lock_finishedLaunching;
  v15 = self->_lock_delegate;
  if (v15)
  {
    lock_delegateFlags = self->_lock_delegateFlags;
    os_unfair_lock_unlock(&self->_lock);
    if ((*&lock_delegateFlags & 0x80000000) != 0 && lock_finishedLaunching)
    {
      v17 = MEMORY[0x1E698E630];
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __108__UISApplicationSupportService_destroyScenesPersistentIdentifiers_animationType_destroySessions_completion___block_invoke;
      v36[3] = &unk_1E7459710;
      v37 = completionCopy;
      v18 = [v17 sentinelWithCompletion:v36];
      currentContext = [MEMORY[0x1E698F490] currentContext];
      remoteProcess = [currentContext remoteProcess];
      auditToken = [remoteProcess auditToken];

      unsignedIntegerValue = [typeCopy unsignedIntegerValue];
      bOOLValue = [sessionsCopy BOOLValue];
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __108__UISApplicationSupportService_destroyScenesPersistentIdentifiers_animationType_destroySessions_completion___block_invoke_139;
      v34[3] = &unk_1E7459760;
      v35 = v18;
      v24 = v18;
      [(UISApplicationSupportServiceDelegate *)v15 destroyScenesWithPersistentIdentifiers:identifiersCopy animationType:unsignedIntegerValue destroySessions:bOOLValue forClient:auditToken completion:v34];

      v25 = v37;
LABEL_13:

      goto LABEL_14;
    }

    if (completionCopy)
    {
      if ((*&lock_delegateFlags & 0x80000000) != 0)
      {
        v27 = @"%@ has not yet finished launching.";
        goto LABEL_12;
      }

LABEL_11:
      v27 = @"%@ does not implement this service.";
LABEL_12:
      v28 = MEMORY[0x1E696AEC0];
      processInfo = [MEMORY[0x1E696AE30] processInfo];
      processName = [processInfo processName];
      v25 = [v28 stringWithFormat:v27, processName];

      v31 = MEMORY[0x1E696ABC0];
      v38 = *MEMORY[0x1E696A588];
      v39 = v25;
      v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
      v33 = [v31 errorWithDomain:@"UISApplicationSupportService" code:1 userInfo:v32];
      completionCopy[2](completionCopy, MEMORY[0x1E695E110], v33);

      goto LABEL_13;
    }
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
    if (completionCopy)
    {
      goto LABEL_11;
    }

    v15 = 0;
  }

LABEL_14:
}

void __108__UISApplicationSupportService_destroyScenesPersistentIdentifiers_animationType_destroySessions_completion___block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 context];
  if (NSClassFromString(&cfstr_Nserror.isa))
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = v6;
  if (v4 && !v6)
  {
    v8 = BSLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v22 = "[signal context]";
      v23 = 2082;
      v24 = "NSError";
      _os_log_impl(&dword_195FF3000, v8, OS_LOG_TYPE_DEFAULT, "BSSafeCast: %{public}s was not of expected class %{public}s", buf, 0x16u);
    }
  }

  v9 = [v3 isFailed];
  if (v9)
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = [MEMORY[0x1E696AE30] processInfo];
    v12 = [v11 processName];
    v13 = [v10 stringWithFormat:@"%@ dropped the request on the floor.", v12];

    v14 = MEMORY[0x1E696ABC0];
    v19 = *MEMORY[0x1E696A588];
    v20 = v13;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v16 = [v14 errorWithDomain:@"UISApplicationSupportService" code:1 userInfo:v15];

    v7 = v16;
  }

  v17 = *(a1 + 32);
  v18 = [MEMORY[0x1E696AD98] numberWithInt:v7 == 0];
  (*(v17 + 16))(v17, v18, v7);
}

void __108__UISApplicationSupportService_destroyScenesPersistentIdentifiers_animationType_destroySessions_completion___block_invoke_139(uint64_t a1, int a2, void *a3)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (a2)
  {

    v6 = 0;
  }

  else if (!v5)
  {
    v7 = MEMORY[0x1E696AEC0];
    v8 = [MEMORY[0x1E696AE30] processInfo];
    v9 = [v8 processName];
    v10 = [v7 stringWithFormat:@"%@ rejected the request, but neglected to provide an error.", v9];

    v11 = MEMORY[0x1E696ABC0];
    v13 = *MEMORY[0x1E696A588];
    v14[0] = v10;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    v6 = [v11 errorWithDomain:@"UISApplicationSupportService" code:1 userInfo:v12];
  }

  [*(a1 + 32) signalWithContext:v6];
}

@end