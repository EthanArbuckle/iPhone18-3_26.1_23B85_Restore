@interface _UIViewServiceHostSessionDeputyShim
+ (id)connectToViewService:(id)a3 appBundleViewServiceBundleIdentifier:(id)a4 deputyInterfaces:(id)a5 connectionHandler:(id)a6;
+ (void)initialize;
- ($115C4C562B26FF47E01F9F4EA65B5887)serviceAuditToken;
- (NSString)debugDescription;
- (id)_terminateWithError:(id)a3;
- (id)connectToDeputyWithInterface:(id)a3 fromExportedHostingObject:(id)a4 connectionHandler:(id)a5;
- (id)disconnect;
- (id)succinctDescription;
- (void)_objc_initiateDealloc;
- (void)_terminateUnconditionallyThen:(id)a3;
- (void)_viewServiceHostSessionDidConnectToClient:(id)a3;
- (void)appendDescriptionToStream:(id)a3;
- (void)callConnectionHandlerWithError:(id)a3;
- (void)createSessionForService:(id)a3 appBundleViewServiceBundleIdentifier:(id)a4;
- (void)dealloc;
- (void)setTerminationHandler:(id)a3;
@end

@implementation _UIViewServiceHostSessionDeputyShim

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {

    _class_setCustomDeallocInitiation();
  }
}

- (void)_objc_initiateDealloc
{
  v3 = [(_UIViewServiceHostSessionDeputyShim *)self disconnect];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __60___UIViewServiceHostSessionDeputyShim__objc_initiateDealloc__block_invoke;
  v4[3] = &__block_descriptor_40_e5_v8__0ls32l8;
  v4[4] = self;
  [v3 whenCompleteDo:v4];
}

+ (id)connectToViewService:(id)a3 appBundleViewServiceBundleIdentifier:(id)a4 deputyInterfaces:(id)a5 connectionHandler:(id)a6
{
  v36 = *MEMORY[0x1E69E9840];
  if (!(a3 | a4))
  {
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"service || bundleIdentifier && !(service && bundleIdentifier)"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v19 = NSStringFromSelector(a2);
      v20 = objc_opt_class();
      *buf = 138544642;
      v25 = v19;
      v26 = 2114;
      v27 = NSStringFromClass(v20);
      v28 = 2048;
      v29 = a1;
      v30 = 2114;
      v31 = @"_UIViewServiceHostSessionDeputyShim_NonARC.m";
      v32 = 1024;
      v33 = 66;
      v34 = 2114;
      v35 = v18;
      _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v18 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1895CC990);
  }

  v10 = objc_alloc_init(_UIViewServiceHostSessionDeputyShim);
  v11 = v10;
  v12 = a4;
  if (!a4)
  {
    v12 = [a3 identifier];
  }

  v13 = objc_opt_new();
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __132___UIViewServiceHostSessionDeputyShim_connectToViewService_appBundleViewServiceBundleIdentifier_deputyInterfaces_connectionHandler___block_invoke;
  v23[3] = &unk_1E7101CD0;
  v23[5] = v12;
  v23[6] = v10;
  v23[4] = v13;
  v10->_cancellationInvocation = [_UIAsyncInvocation invocationWithBlock:v23];
  v14 = objc_opt_new();
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __132___UIViewServiceHostSessionDeputyShim_connectToViewService_appBundleViewServiceBundleIdentifier_deputyInterfaces_connectionHandler___block_invoke_3;
  v22[3] = &unk_1E7101CF8;
  v22[4] = v14;
  v22[5] = v12;
  v22[6] = v13;
  v22[7] = a6;
  v22[8] = v10;
  v10->_lock_connectionHandler = [v22 copy];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __132___UIViewServiceHostSessionDeputyShim_connectToViewService_appBundleViewServiceBundleIdentifier_deputyInterfaces_connectionHandler___block_invoke_20;
  v21[3] = &__block_descriptor_40_e14_v16__0___v___8ls32l8;
  v21[4] = v10;
  v10->_terminateInvocation = [_UIAsyncInvocation invocationWithBlock:v21];
  v10->_lock._os_unfair_lock_opaque = 0;
  v10->_loggingIdentifier = v12;
  v10->_deputyInterfaces = a5;
  [(_UIViewServiceHostSessionDeputyShim *)v10 createSessionForService:a3 appBundleViewServiceBundleIdentifier:a4];
  return v10->_cancellationInvocation;
}

- (id)_terminateWithError:(id)a3
{
  os_unfair_lock_lock(&self->_lock);
  if (!self->_lock_terminationError)
  {
    self->_lock_terminationError = a3;
  }

  os_unfair_lock_unlock(&self->_lock);
  [(_UIViewServiceHostSessionDeputyShim *)self callConnectionHandlerWithError:a3];
  terminateInvocation = self->_terminateInvocation;

  return [(_UIAsyncInvocation *)terminateInvocation invoke];
}

- (void)_terminateUnconditionallyThen:(id)a3
{
  os_unfair_lock_lock(&self->_lock);
  v5 = [self->_lock_terminationHandler copy];
  v6 = self->_lock_terminationError;

  self->_lock_terminationHandler = 0;
  os_unfair_lock_unlock(&self->_lock);
  if (v5)
  {
    (v5)[2](v5, v6);
  }

  v7 = [(_UIViewServiceHostSession *)self->_session sceneSynchronizer];
  [(_UIViewServiceHostSession *)self->_session invalidate];

  self->_session = 0;
  if (v7)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __69___UIViewServiceHostSessionDeputyShim__terminateUnconditionallyThen___block_invoke;
    v9[3] = &unk_1E70F3168;
    v9[4] = a3;
    [v7 performAsyncOnSendingQueue:v9];
  }

  else
  {
    v8 = *(a3 + 2);

    v8(a3);
  }
}

- (void)dealloc
{
  v20 = *MEMORY[0x1E69E9840];
  if (self->_lock_connectionHandler)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"the connection handler must have been called and cleared before dealloc"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v5 = NSStringFromSelector(a2);
      v6 = objc_opt_class();
      *buf = 138544642;
      v9 = v5;
      v10 = 2114;
      v11 = NSStringFromClass(v6);
      v12 = 2048;
      v13 = self;
      v14 = 2114;
      v15 = @"_UIViewServiceHostSessionDeputyShim_NonARC.m";
      v16 = 1024;
      v17 = 169;
      v18 = 2114;
      v19 = v4;
      _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v4 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1895CCF40);
  }

  v7.receiver = self;
  v7.super_class = _UIViewServiceHostSessionDeputyShim;
  [(_UIViewServiceHostSessionDeputyShim *)&v7 dealloc];
}

- (void)callConnectionHandlerWithError:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  lock_connectionHandler = self->_lock_connectionHandler;
  self->_lock_connectionHandler = 0;
  os_unfair_lock_unlock(&self->_lock);
  if (lock_connectionHandler)
  {
    lock_connectionHandler[2]();
  }

  else
  {
    v5 = *(__UILogGetCategoryCachedImpl("ViewServiceConnectionRequest", &callConnectionHandlerWithError____s_category) + 8);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      loggingIdentifier = self->_loggingIdentifier;
      *buf = 138412546;
      v9 = loggingIdentifier;
      v10 = 2114;
      v11 = a3;
      _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEFAULT, "Ignoring request to call completion handler for already finished session deputy shim: '%@' : %{public}@", buf, 0x16u);
    }
  }
}

- (void)createSessionForService:(id)a3 appBundleViewServiceBundleIdentifier:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  if (self->_session)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", a4, @"!_session"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v7 = NSStringFromSelector(a2);
      v8 = objc_opt_class();
      *buf = 138544642;
      v10 = v7;
      v11 = 2114;
      v12 = NSStringFromClass(v8);
      v13 = 2048;
      v14 = self;
      v15 = 2114;
      v16 = @"_UIViewServiceHostSessionDeputyShim_NonARC.m";
      v17 = 1024;
      v18 = 207;
      v19 = 2114;
      v20 = v6;
      _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v6 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1895CD200);
  }

  self->_session = [[_UIViewServiceHostSession alloc] initWithService:a3 viewServiceAppBundleId:a4 delegate:self];
}

- (id)connectToDeputyWithInterface:(id)a3 fromExportedHostingObject:(id)a4 connectionHandler:(id)a5
{
  v31 = a4;
  os_unfair_lock_lock(&self->_lock);
  v8 = atomic_load(&self->_lock_isTerminated);
  if (v8)
  {
    v9 = dispatch_semaphore_create(0);
    global_queue = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __112___UIViewServiceHostSessionDeputyShim_connectToDeputyWithInterface_fromExportedHostingObject_connectionHandler___block_invoke;
    block[3] = &unk_1E7101D40;
    block[5] = v9;
    block[6] = a5;
    block[4] = self;
    dispatch_async(global_queue, block);
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __112___UIViewServiceHostSessionDeputyShim_connectToDeputyWithInterface_fromExportedHostingObject_connectionHandler___block_invoke_2;
    v29[3] = &unk_1E7101D68;
    v29[4] = v9;
    return [_UIAsyncInvocation invocationWithBlock:v29];
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
    v12 = MEMORY[0x1E696AEC0];
    v13 = objc_opt_class();
    v14 = [objc_msgSend(v12 stringWithFormat:@"com.apple.uikit.%@ %@ %@ %p", NSStringFromClass(v13), self->_loggingIdentifier, a3, self), "UTF8String"];
    v15 = dispatch_queue_create(v14, 0);
    v27[0] = 0;
    v27[1] = v27;
    v27[2] = 0x2020000000;
    v28 = 1;
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __112___UIViewServiceHostSessionDeputyShim_connectToDeputyWithInterface_fromExportedHostingObject_connectionHandler___block_invoke_3;
    v26[3] = &unk_1E7101E30;
    v26[4] = v15;
    v26[5] = v27;
    serviceConnection = self->_serviceConnection;
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __112___UIViewServiceHostSessionDeputyShim_connectToDeputyWithInterface_fromExportedHostingObject_connectionHandler___block_invoke_5;
    v25[3] = &unk_1E7101DE0;
    v25[4] = v26;
    v25[5] = a5;
    v17 = [(NSXPCConnection *)serviceConnection remoteObjectProxyWithErrorHandler:v25];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __112___UIViewServiceHostSessionDeputyShim_connectToDeputyWithInterface_fromExportedHostingObject_connectionHandler___block_invoke_7;
    v23[3] = &unk_1E7101E08;
    v23[4] = v26;
    v23[5] = a5;
    v24 = v23;
    v18 = [a3 connectionInvocation];
    if ([a3 hostObjectInterface])
    {
      v19 = &v31;
    }

    else
    {
      v22 = 0;
      v19 = &v22;
    }

    [v18 setArgument:v19 atIndex:2];
    [v18 setArgument:&v24 atIndex:3];
    [v18 setSelector:{objc_msgSend(a3, "connectionSelector")}];
    [v18 invokeWithTarget:v17];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __112___UIViewServiceHostSessionDeputyShim_connectToDeputyWithInterface_fromExportedHostingObject_connectionHandler___block_invoke_9;
    v21[3] = &unk_1E7101E30;
    v21[4] = v15;
    v21[5] = v27;
    v11 = [_UIAsyncInvocation invocationWithBlock:v21];
    _Block_object_dispose(v27, 8);
  }

  return v11;
}

- (void)setTerminationHandler:(id)a3
{
  os_unfair_lock_lock(&self->_lock);
  lock_terminationHandler = self->_lock_terminationHandler;
  if (lock_terminationHandler != a3)
  {

    self->_lock_terminationHandler = [a3 copy];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (id)disconnect
{
  v3 = [MEMORY[0x1E696ABC0] errorWithDomain:0x1EFB82530 code:4 userInfo:&unk_1EFE34158];

  return [(_UIViewServiceHostSessionDeputyShim *)self _terminateWithError:v3];
}

- ($115C4C562B26FF47E01F9F4EA65B5887)serviceAuditToken
{
  result = self->_serviceConnection;
  if (result)
  {
    return [($115C4C562B26FF47E01F9F4EA65B5887 *)result auditToken];
  }

  *retstr->var0 = 0u;
  *&retstr->var0[4] = 0u;
  return result;
}

- (void)_viewServiceHostSessionDidConnectToClient:(id)a3
{
  v4 = [(_UIViewServiceHostSession *)a3 connectionWithClientContextBuilder:&__block_literal_global_134 replyHandler:?];
  if (self->_deputyInterfaces)
  {
    [v4 setRemoteObjectInterface:{+[_UIViewServiceDeputyManager exportedInterfaceSupportingDeputyInterfaces:](_UIViewServiceDeputyManager, "exportedInterfaceSupportingDeputyInterfaces:")}];

    self->_deputyInterfaces = 0;
  }

  [v4 activate];
  self->_serviceConnection = v4;

  [(_UIViewServiceHostSessionDeputyShim *)self callConnectionHandlerWithError:0];
}

- (void)appendDescriptionToStream:(id)a3
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __65___UIViewServiceHostSessionDeputyShim_appendDescriptionToStream___block_invoke;
  v6[3] = &unk_1E7101E78;
  v6[4] = a3;
  v6[5] = self;
  [a3 appendProem:self block:v6];
  if ([objc_msgSend(a3 "style")] != 2)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __65___UIViewServiceHostSessionDeputyShim_appendDescriptionToStream___block_invoke_2;
    v5[3] = &unk_1E7101E78;
    v5[4] = a3;
    v5[5] = self;
    [a3 appendBodySectionWithName:0 block:v5];
  }
}

- (id)succinctDescription
{
  v3 = MEMORY[0x1E698E688];
  v4 = [MEMORY[0x1E698E690] succinctStyle];

  return [v3 descriptionForRootObject:self withStyle:v4];
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E698E688];
  v4 = [MEMORY[0x1E698E690] debugStyle];

  return [v3 descriptionForRootObject:self withStyle:v4];
}

@end