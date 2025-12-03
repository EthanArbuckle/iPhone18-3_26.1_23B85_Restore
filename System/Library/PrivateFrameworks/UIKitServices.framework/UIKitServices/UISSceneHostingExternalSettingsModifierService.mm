@interface UISSceneHostingExternalSettingsModifierService
- (BSServiceConnectionEndpoint)endpoint;
- (UISSceneHostingExternalSettingsModifierService)init;
- (UISSceneHostingExternalSettingsModifierService)initWithCalloutQueue:(id)queue;
- (UISSceneHostingExternalSettingsModifierServiceDelegate)delegate;
- (void)dealloc;
- (void)invalidate;
- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context;
- (void)requestSettingsModifiersForProcessIdentity:(id)identity withCompletion:(id)completion;
- (void)setDelegate:(id)delegate;
@end

@implementation UISSceneHostingExternalSettingsModifierService

- (UISSceneHostingExternalSettingsModifierService)initWithCalloutQueue:(id)queue
{
  v46 = *MEMORY[0x1E69E9840];
  queueCopy = queue;
  if (!queueCopy)
  {
    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"queue"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v20 = NSStringFromSelector(a2);
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      *buf = 138544642;
      v35 = v20;
      v36 = 2114;
      v37 = v22;
      v38 = 2048;
      selfCopy = self;
      v40 = 2114;
      v41 = @"UISSceneHostingExternalSettingsModifierService.m";
      v42 = 1024;
      v43 = 36;
      v44 = 2114;
      v45 = v19;
      _os_log_error_impl(&dword_195FF3000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v19 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x196009CB0);
  }

  v7 = queueCopy;
  v33.receiver = self;
  v33.super_class = UISSceneHostingExternalSettingsModifierService;
  v8 = [(UISSceneHostingExternalSettingsModifierService *)&v33 init];
  v9 = v8;
  if (v8)
  {
    v8->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v8->_calloutQueue, queue);
    bootstrapConfiguration = [MEMORY[0x1E698F508] bootstrapConfiguration];
    v11 = [bootstrapConfiguration domainsContainingServiceIdentifier:0x1F0A7DEB8];
    if ([(__CFString *)v11 count]!= 1)
    {
      v23 = MEMORY[0x1E696AEC0];
      v24 = [(__CFString *)v11 count];
      v25 = @"(none found, is the service specified in this process's BSServiceDomains?)";
      if (v24)
      {
        v25 = v11;
      }

      v26 = [v23 stringWithFormat:@"must have one and only one domain specify %@ : domains=%@", 0x1F0A7DEB8, v25];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v27 = NSStringFromSelector(a2);
        v28 = objc_opt_class();
        v29 = NSStringFromClass(v28);
        *buf = 138544642;
        v35 = v27;
        v36 = 2114;
        v37 = v29;
        v38 = 2048;
        selfCopy = v9;
        v40 = 2114;
        v41 = @"UISSceneHostingExternalSettingsModifierService.m";
        v42 = 1024;
        v43 = 45;
        v44 = 2114;
        v45 = v26;
        _os_log_error_impl(&dword_195FF3000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v26 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x196009DBCLL);
    }

    anyObject = [(__CFString *)v11 anyObject];
    v13 = MEMORY[0x1E698F4B8];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __71__UISSceneHostingExternalSettingsModifierService_initWithCalloutQueue___block_invoke;
    v30[3] = &unk_1E7459468;
    v31 = anyObject;
    v14 = v9;
    v32 = v14;
    v15 = anyObject;
    v16 = [v13 listenerWithConfigurator:v30];
    v17 = v14[3];
    v14[3] = v16;

    [v14[3] activate];
  }

  return v9;
}

void __71__UISSceneHostingExternalSettingsModifierService_initWithCalloutQueue___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = a2;
  v4 = [v3 identifier];
  [v5 setDomain:v4];

  [v5 setService:0x1F0A7DEB8];
  [v5 setDelegate:*(a1 + 40)];
}

- (UISSceneHostingExternalSettingsModifierService)init
{
  v3 = MEMORY[0x1E698F4D0];
  userInteractive = [MEMORY[0x1E698F500] userInteractive];
  v5 = [v3 queueWithName:@"com.apple.uis.scene-hosting-external-settings-modifier-service.server" serviceQuality:userInteractive];

  v6 = [(UISSceneHostingExternalSettingsModifierService *)self initWithCalloutQueue:v5];
  return v6;
}

- (void)dealloc
{
  v21 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  if (!self->_lock_invalidated)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"must call invalidate before dealloc"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v5 = NSStringFromSelector(a2);
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      *buf = 138544642;
      v10 = v5;
      v11 = 2114;
      v12 = v7;
      v13 = 2048;
      selfCopy = self;
      v15 = 2114;
      v16 = @"UISSceneHostingExternalSettingsModifierService.m";
      v17 = 1024;
      v18 = 70;
      v19 = 2114;
      v20 = v4;
      _os_log_error_impl(&dword_195FF3000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v4 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19600A03CLL);
  }

  os_unfair_lock_unlock(&self->_lock);
  v8.receiver = self;
  v8.super_class = UISSceneHostingExternalSettingsModifierService;
  [(UISSceneHostingExternalSettingsModifierService *)&v8 dealloc];
}

- (UISSceneHostingExternalSettingsModifierServiceDelegate)delegate
{
  v22 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_invalidated)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"!_lock_invalidated"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v7 = NSStringFromSelector(a2);
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      *buf = 138544642;
      v11 = v7;
      v12 = 2114;
      v13 = v9;
      v14 = 2048;
      selfCopy = self;
      v16 = 2114;
      v17 = @"UISSceneHostingExternalSettingsModifierService.m";
      v18 = 1024;
      v19 = 78;
      v20 = 2114;
      v21 = v6;
      _os_log_error_impl(&dword_195FF3000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v6 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19600A1D0);
  }

  v4 = self->_lock_delegate;
  os_unfair_lock_unlock(&self->_lock);

  return v4;
}

- (void)setDelegate:(id)delegate
{
  v28 = *MEMORY[0x1E69E9840];
  delegateCopy = delegate;
  if (!delegateCopy)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"delegate"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = NSStringFromSelector(a2);
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      *buf = 138544642;
      v17 = v8;
      v18 = 2114;
      v19 = v10;
      v20 = 2048;
      selfCopy2 = self;
      v22 = 2114;
      v23 = @"UISSceneHostingExternalSettingsModifierService.m";
      v24 = 1024;
      v25 = 85;
      v26 = 2114;
      v27 = v7;
      _os_log_error_impl(&dword_195FF3000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v7 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19600A3A0);
  }

  v15 = delegateCopy;
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_invalidated)
  {
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"!_lock_invalidated"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v12 = NSStringFromSelector(a2);
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      *buf = 138544642;
      v17 = v12;
      v18 = 2114;
      v19 = v14;
      v20 = 2048;
      selfCopy2 = self;
      v22 = 2114;
      v23 = @"UISSceneHostingExternalSettingsModifierService.m";
      v24 = 1024;
      v25 = 87;
      v26 = 2114;
      v27 = v11;
      _os_log_error_impl(&dword_195FF3000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v11 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19600A498);
  }

  if (self->_lock_delegate != v15)
  {
    objc_storeStrong(&self->_lock_delegate, delegate);
    *&self->_lock_delegateFlags = *&self->_lock_delegateFlags & 0xFE | objc_opt_respondsToSelector() & 1;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (BSServiceConnectionEndpoint)endpoint
{
  v22 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_invalidated)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"!_lock_invalidated"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v7 = NSStringFromSelector(a2);
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      *buf = 138544642;
      v11 = v7;
      v12 = 2114;
      v13 = v9;
      v14 = 2048;
      selfCopy = self;
      v16 = 2114;
      v17 = @"UISSceneHostingExternalSettingsModifierService.m";
      v18 = 1024;
      v19 = 97;
      v20 = 2114;
      v21 = v6;
      _os_log_error_impl(&dword_195FF3000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v6 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19600A630);
  }

  endpoint = [(BSServiceConnectionListener *)self->_lock_listener endpoint];
  os_unfair_lock_unlock(&self->_lock);

  return endpoint;
}

- (void)invalidate
{
  v21 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_invalidated)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"!_lock_invalidated"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = NSStringFromSelector(a2);
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      *buf = 138544642;
      v10 = v6;
      v11 = 2114;
      v12 = v8;
      v13 = 2048;
      selfCopy = self;
      v15 = 2114;
      v16 = @"UISSceneHostingExternalSettingsModifierService.m";
      v17 = 1024;
      v18 = 105;
      v19 = 2114;
      v20 = v5;
      _os_log_error_impl(&dword_195FF3000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v5 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19600A7CCLL);
  }

  self->_lock_invalidated = 1;
  [(BSServiceConnectionListener *)self->_lock_listener invalidate];
  lock_listener = self->_lock_listener;
  self->_lock_listener = 0;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context
{
  v6 = MEMORY[0x1E698F470];
  connectionCopy = connection;
  v8 = [v6 interfaceWithIdentifier:0x1F0A7DEB8];
  v9 = [MEMORY[0x1E698E710] protocolForProtocol:&unk_1F0A8A580];
  [v8 setServer:v9];

  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __92__UISSceneHostingExternalSettingsModifierService_listener_didReceiveConnection_withContext___block_invoke;
  v14 = &unk_1E7458E98;
  v15 = v8;
  selfCopy = self;
  v10 = v8;
  [connectionCopy configureConnection:&v11];
  [connectionCopy activate];
}

void __92__UISSceneHostingExternalSettingsModifierService_listener_didReceiveConnection_withContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setInterface:v3];
  [v4 setInterfaceTarget:*(a1 + 40)];
  [v4 setQueue:*(*(a1 + 40) + 8)];
  [v4 setInterruptionHandler:&__block_literal_global_10];
  [v4 setInvalidationHandler:&__block_literal_global_82];
}

- (void)requestSettingsModifiersForProcessIdentity:(id)identity withCompletion:(id)completion
{
  identityCopy = identity;
  completionCopy = completion;
  [(BSServiceQueue *)self->_calloutQueue assertBarrierOnQueue];
  os_unfair_lock_lock(&self->_lock);
  v7 = self->_lock_delegate;
  if (v7)
  {
    v8 = *&self->_lock_delegateFlags & 1;
  }

  else
  {
    v8 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  currentContext = [MEMORY[0x1E698F490] currentContext];
  remoteToken = [currentContext remoteToken];
  if (remoteToken)
  {
    if (identityCopy)
    {
      if (v8)
      {
        v11 = [(UISSceneHostingExternalSettingsModifierServiceDelegate *)v7 settingsModifiersForClientProcessIdentity:identityCopy hostedBy:remoteToken];
        v12 = [v11 count];
        v13 = completionCopy[2];
        if (v12)
        {
          v14 = v11;
        }

        else
        {
          v14 = 0;
        }

        v15 = completionCopy;
        v16 = 0;
        goto LABEL_15;
      }

      v17 = MEMORY[0x1E696ABC0];
      v18 = 1002;
    }

    else
    {
      v17 = MEMORY[0x1E696ABC0];
      v18 = 1001;
    }
  }

  else
  {
    v17 = MEMORY[0x1E696ABC0];
    v18 = 1000;
  }

  v11 = [v17 errorWithDomain:0x1F0A7DED8 code:v18 userInfo:0];
  v13 = completionCopy[2];
  v15 = completionCopy;
  v14 = 0;
  v16 = v11;
LABEL_15:
  v13(v15, v14, v16);
}

@end