@interface PKXPCService
- (BOOL)connectionEstablished;
- (BOOL)forceConnectionOnResume;
- (BOOL)isSuspended;
- (PKXPCService)init;
- (PKXPCService)initWithMachServiceName:(id)a3 remoteObjectInterface:(id)a4 exportedObjectInterface:(id)a5 exportedObject:(id)a6 serviceResumedNotificationName:(id)a7 options:(unint64_t)a8;
- (PKXPCServiceDelegate)delegate;
- (id)_connection;
- (id)existingRemoteObjectProxyWithErrorHandler:(id)a3;
- (id)existingSynchronousRemoteObjectProxyWithErrorHandler:(id)a3;
- (id)remoteObjectProxyWithErrorHandler:(id)a3;
- (id)remoteObjectProxyWithFailureHandler:(id)a3;
- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)a3;
- (uint64_t)_newWrappedErrorHandlerForHandler:(uint64_t)a1;
- (void)_createConnectionIfPossible:(uint64_t)a1;
- (void)_establishServiceConnection;
- (void)_sendResumed;
- (void)_sendSuspended;
- (void)dealloc;
- (void)foregroundActiveArbiter:(id)a3 didUpdateForegroundActiveState:(id)a4;
- (void)setDelegate:(id)a3;
- (void)setForceConnectionOnResume:(BOOL)a3;
@end

@implementation PKXPCService

- (id)_connection
{
  if (a1)
  {
    os_unfair_lock_lock((a1 + 40));
    [(PKXPCService *)a1 _createConnectionIfPossible:?];
    v2 = *(a1 + 48);
    os_unfair_lock_unlock((a1 + 40));
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)_establishServiceConnection
{
  os_unfair_lock_lock((a1 + 40));
  if (!*(a1 + 48))
  {
    [(PKXPCService *)a1 _createConnectionIfPossible:?];
  }

  os_unfair_lock_unlock((a1 + 40));
}

- (void)dealloc
{
  v22 = *MEMORY[0x1E69E9840];
  [(PKForegroundActiveArbiter *)self->_foregroundActiveArbiter unregisterObserver:self];
  serviceResumedListenerInvalidater = self->_serviceResumedListenerInvalidater;
  if (serviceResumedListenerInvalidater)
  {
    [(PKInvalidatable *)serviceResumedListenerInvalidater invalidate];
    v4 = self->_serviceResumedListenerInvalidater;
    self->_serviceResumedListenerInvalidater = 0;
  }

  if (self->_foregroundListener || self->_backgroundListener)
  {
    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    v6 = v5;
    if (self->_foregroundListener)
    {
      [v5 removeObserver:?];
      foregroundListener = self->_foregroundListener;
      self->_foregroundListener = 0;
    }

    if (self->_backgroundListener)
    {
      [v6 removeObserver:?];
      backgroundListener = self->_backgroundListener;
      self->_backgroundListener = 0;
    }
  }

  os_unfair_lock_lock(&self->_lock);
  connection = self->_connection;
  if (connection)
  {
    v10 = PKLogFacilityTypeGetObject(5uLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      className = self->_className;
      *buf = 138543874;
      *&buf[4] = className;
      *&buf[12] = 2048;
      *&buf[14] = self;
      *&buf[22] = 2048;
      v20 = connection;
      _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_INFO, "%{public}@:%p (%p): Tearing down existing connection", buf, 0x20u);
    }

    currentExportedProxy = self->_currentExportedProxy;
    if (currentExportedProxy)
    {
      PKXPCForwarderInvalidate(currentExportedProxy);
      v13 = self->_currentExportedProxy;
      self->_currentExportedProxy = 0;
    }

    [(NSXPCConnection *)self->_connection setInterruptionHandler:0];
    [(NSXPCConnection *)self->_connection setInvalidationHandler:0];
    v14 = self->_connection;
    v15 = self->_connection;
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __47__PKXPCService__invalidateConnectionIfPossible__block_invoke;
    v20 = &unk_1E79C4E28;
    v21 = v14;
    v16 = v14;
    [(NSXPCConnection *)v15 addBarrierBlock:buf];
    v17 = self->_connection;
    self->_connection = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  v18.receiver = self;
  v18.super_class = PKXPCService;
  [(PKXPCService *)&v18 dealloc];
}

- (PKXPCService)init
{
  v3 = PDXPCServiceInterface();
  v4 = [(PKXPCService *)self initWithMachServiceName:0 remoteObjectInterface:v3 exportedObjectInterface:0 exportedObject:0];

  return v4;
}

- (PKXPCService)initWithMachServiceName:(id)a3 remoteObjectInterface:(id)a4 exportedObjectInterface:(id)a5 exportedObject:(id)a6 serviceResumedNotificationName:(id)a7 options:(unint64_t)a8
{
  v51[1] = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = objc_opt_class();
  v20 = NSStringFromClass(v19);
  if ([v14 length])
  {
    v45.receiver = self;
    v45.super_class = PKXPCService;
    v21 = [(PKXPCService *)&v45 init];
    if (v21)
    {
      v22 = [v14 copy];
      machServiceName = v21->_machServiceName;
      v21->_machServiceName = v22;

      if (v15)
      {
        v24 = v15;
      }

      else
      {
        v24 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F23B8538];
      }

      remoteObjectInterface = v21->_remoteObjectInterface;
      v21->_remoteObjectInterface = v24;

      if (v16)
      {
        v27 = v16;
      }

      else
      {
        v27 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F23B8538];
      }

      exportedObjectInterface = v21->_exportedObjectInterface;
      v21->_exportedObjectInterface = v27;

      if (v17)
      {
        v29 = PKXPCForwarderCreate(v17);
        templateExportedProxy = v21->_templateExportedProxy;
        v21->_templateExportedProxy = v29;
      }

      v21->_options = a8;
      v31 = [v20 copy];
      className = v21->_className;
      v21->_className = v31;

      v33 = [v18 length];
      if (v33)
      {
        v33 = [v18 copy];
      }

      serviceResumedNotificationName = v21->_serviceResumedNotificationName;
      v21->_serviceResumedNotificationName = v33;

      v21->_lock._os_unfair_lock_opaque = 0;
      objc_storeStrong(&v21->_foregroundActiveArbiter, ForegroundActiveArbiter);
      foregroundActiveArbiter = v21->_foregroundActiveArbiter;
      if (!foregroundActiveArbiter || (v21->_suspendCallbacks = ([(PKForegroundActiveArbiter *)foregroundActiveArbiter registerObserver:v21]& 1) == 0, !v21->_foregroundActiveArbiter))
      {
        if (!v21->_foregroundListener || !v21->_backgroundListener)
        {
          v36 = [MEMORY[0x1E696AD88] defaultCenter];
          objc_initWeak(&location, v21);
          if (!v21->_foregroundListener)
          {
            *buf = MEMORY[0x1E69E9820];
            *&buf[8] = 3221225472;
            *&buf[16] = __61__PKXPCService__registerForApplicationLifeCycleNotifications__block_invoke;
            v50 = &unk_1E79CA788;
            objc_copyWeak(v51, &location);
            v37 = [v36 addObserverForName:@"UIApplicationWillEnterForegroundNotification" object:0 queue:0 usingBlock:buf];
            foregroundListener = v21->_foregroundListener;
            v21->_foregroundListener = v37;

            objc_destroyWeak(v51);
          }

          if (!v21->_backgroundListener)
          {
            from[0] = MEMORY[0x1E69E9820];
            from[1] = 3221225472;
            from[2] = __61__PKXPCService__registerForApplicationLifeCycleNotifications__block_invoke_2;
            from[3] = &unk_1E79CA788;
            objc_copyWeak(&v47, &location);
            v39 = [v36 addObserverForName:@"UIApplicationDidEnterBackgroundNotification" object:0 queue:0 usingBlock:from];
            backgroundListener = v21->_backgroundListener;
            v21->_backgroundListener = v39;

            objc_destroyWeak(&v47);
          }

          objc_destroyWeak(&location);
        }
      }

      if (!v21->_serviceResumedListenerInvalidater && v21->_serviceResumedNotificationName)
      {
        objc_initWeak(from, v21);
        v41 = v21->_serviceResumedNotificationName;
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = __63__PKXPCService__registerForServiceListenerResumedNotifications__block_invoke;
        v50 = &unk_1E79CDAB8;
        objc_copyWeak(v51, from);
        v42 = PKNotifyCoalescedRegister(v41, buf);
        serviceResumedListenerInvalidater = v21->_serviceResumedListenerInvalidater;
        v21->_serviceResumedListenerInvalidater = v42;

        objc_destroyWeak(v51);
        objc_destroyWeak(from);
      }

      if (!v21->_suspendCallbacks)
      {
        [(PKXPCService *)v21 _establishServiceConnection];
      }
    }
  }

  else
  {
    v25 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      *&buf[4] = v20;
      *&buf[12] = 2114;
      *&buf[14] = v14;
      _os_log_error_impl(&dword_1AD337000, v25, OS_LOG_TYPE_ERROR, "%{public}@: Invalid mach service name %{public}@", buf, 0x16u);
    }

    v21 = 0;
  }

  return v21;
}

- (id)remoteObjectProxyWithFailureHandler:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __52__PKXPCService_remoteObjectProxyWithFailureHandler___block_invoke;
    v8[3] = &unk_1E79C4450;
    v9 = v4;
    v6 = [(PKXPCService *)self remoteObjectProxyWithErrorHandler:v8];
  }

  else
  {
    v6 = [(PKXPCService *)self remoteObjectProxyWithErrorHandler:0];
  }

  return v6;
}

- (id)remoteObjectProxyWithErrorHandler:(id)a3
{
  v4 = [(PKXPCService *)self _newWrappedErrorHandlerForHandler:a3];
  v5 = [(PKXPCService *)self _connection];
  v6 = [v5 remoteObjectProxyWithErrorHandler:v4];

  if (!v6 && v4)
  {
    v4[2](v4, 0);
  }

  return v6;
}

- (uint64_t)_newWrappedErrorHandlerForHandler:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = *(a1 + 24);
    v8 = MEMORY[0x1E69E9820];
    v9 = 3221225472;
    v10 = __50__PKXPCService__newWrappedErrorHandlerForHandler___block_invoke;
    v11 = &unk_1E79C4C70;
    v12 = v4;
    v13 = v3;
    v5 = v4;
    v6 = _Block_copy(&v8);
    a1 = [v6 copy];
  }

  return a1;
}

- (id)existingRemoteObjectProxyWithErrorHandler:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = self->_connection;
  os_unfair_lock_unlock(&self->_lock);
  v6 = [(PKXPCService *)self _newWrappedErrorHandlerForHandler:v4];

  v7 = [(NSXPCConnection *)v5 remoteObjectProxyWithErrorHandler:v6];

  if (v6 && !v7)
  {
    v6[2](v6, 0);
  }

  return v7;
}

- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)a3
{
  v4 = [(PKXPCService *)self _newWrappedErrorHandlerForHandler:a3];
  v5 = [(PKXPCService *)self _connection];
  v6 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v4];

  if (!v6 && v4)
  {
    v4[2](v4, 0);
  }

  return v6;
}

- (id)existingSynchronousRemoteObjectProxyWithErrorHandler:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = self->_connection;
  os_unfair_lock_unlock(&self->_lock);
  v6 = [(PKXPCService *)self _newWrappedErrorHandlerForHandler:v4];

  v7 = [(NSXPCConnection *)v5 synchronousRemoteObjectProxyWithErrorHandler:v6];

  return v7;
}

- (void)_createConnectionIfPossible:(uint64_t)a1
{
  v47 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 48))
  {
    v4 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:*(a1 + 120) options:0];
    v5 = *(a1 + 48);
    *(a1 + 48) = v4;

    [*(a1 + 48) setRemoteObjectInterface:*(a1 + 8)];
    [*(a1 + 48) setExportedInterface:*(a1 + 16)];
    v6 = *(a1 + 56);
    if (v6)
    {
      PKXPCForwarderCopy(v6);
      v7 = *(a1 + 64);
      *(a1 + 64) = v8;

      [*(a1 + 48) setExportedObject:*(a1 + 64)];
    }

    v9 = *(a1 + 48);
    v10 = *(a1 + 24);
    objc_initWeak(&location, a1);
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __44__PKXPCService__createConnectionIfPossible___block_invoke;
    v37[3] = &unk_1E79CDA68;
    v11 = v9;
    v38 = v11;
    objc_copyWeak(&v39, &location);
    v12 = [v37 copy];
    v13 = *(a1 + 48);
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __44__PKXPCService__createConnectionIfPossible___block_invoke_3;
    v32[3] = &unk_1E79CDA90;
    v14 = v10;
    v33 = v14;
    objc_copyWeak(&v36, &location);
    v15 = v11;
    v34 = v15;
    v16 = v12;
    v35 = v16;
    [v13 setInterruptionHandler:v32];
    v17 = *(a1 + 48);
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __44__PKXPCService__createConnectionIfPossible___block_invoke_59;
    v27[3] = &unk_1E79CDA90;
    v18 = v14;
    v28 = v18;
    objc_copyWeak(&v31, &location);
    v19 = v15;
    v29 = v19;
    v20 = v16;
    v30 = v20;
    [v17 setInvalidationHandler:v27];
    if (*(a1 + 128))
    {
      v21 = [*(a1 + 48) _xpcConnection];
      xpc_connection_set_non_launching();
    }

    v22 = PKLogFacilityTypeGetObject(5uLL);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = *(a1 + 24);
      v24 = *(a1 + 48);
      *buf = 138543874;
      v42 = v23;
      v43 = 2048;
      v44 = a1;
      v45 = 2048;
      v46 = v24;
      _os_log_impl(&dword_1AD337000, v22, OS_LOG_TYPE_INFO, "%{public}@:%p (%p): connection created and resumed.", buf, 0x20u);
    }

    [*(a1 + 48) resume];
    if (*(a1 + 72) == 1)
    {
      v25 = [*(a1 + 48) remoteObjectProxy];
      [v25 serviceSuspended];
    }

    else
    {
      if (!a2)
      {
LABEL_13:
        WeakRetained = objc_loadWeakRetained((a1 + 112));
        [WeakRetained remoteService:a1 didEstablishConnection:*(a1 + 48)];

        objc_destroyWeak(&v31);
        objc_destroyWeak(&v36);

        objc_destroyWeak(&v39);
        objc_destroyWeak(&location);

        return;
      }

      v25 = [*(a1 + 48) remoteObjectProxy];
      [v25 serviceResumed];
    }

    goto LABEL_13;
  }
}

void __44__PKXPCService__createConnectionIfPossible___block_invoke(uint64_t a1, int a2)
{
  [*(a1 + 32) setInterruptionHandler:0];
  [*(a1 + 32) setInvalidationHandler:0];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    os_unfair_lock_lock(WeakRetained + 10);
    if (*&v5[12]._os_unfair_lock_opaque == *(a1 + 32))
    {
      v6 = *&v5[16]._os_unfair_lock_opaque;
      if (v6)
      {
        PKXPCForwarderInvalidate(v6);
        v7 = *&v5[16]._os_unfair_lock_opaque;
        *&v5[16]._os_unfair_lock_opaque = 0;
      }

      if (a2)
      {
        v8 = *(a1 + 32);
        v9 = *(a1 + 32);
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __44__PKXPCService__createConnectionIfPossible___block_invoke_2;
        v14[3] = &unk_1E79C4E28;
        v15 = v8;
        v10 = v8;
        [v9 addBarrierBlock:v14];

        v11 = *&v5[12]._os_unfair_lock_opaque;
        *&v5[12]._os_unfair_lock_opaque = 0;

        v12 = objc_loadWeakRetained(&v5[28]);
        [v12 remoteService:v5 didInterruptConnection:*(a1 + 32)];
      }

      else
      {
        v13 = *&v5[12]._os_unfair_lock_opaque;
        *&v5[12]._os_unfair_lock_opaque = 0;
      }
    }

    os_unfair_lock_unlock(v5 + 10);
  }
}

uint64_t __44__PKXPCService__createConnectionIfPossible___block_invoke_3(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(5uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    v5 = *(a1 + 40);
    v7 = 138543874;
    v8 = v3;
    v9 = 2048;
    v10 = WeakRetained;
    v11 = 2048;
    v12 = v5;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_INFO, "%{public}@:%p (%p): connection interrupted", &v7, 0x20u);
  }

  return (*(*(a1 + 48) + 16))();
}

uint64_t __44__PKXPCService__createConnectionIfPossible___block_invoke_59(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(5uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    v5 = *(a1 + 40);
    v7 = 138543874;
    v8 = v3;
    v9 = 2048;
    v10 = WeakRetained;
    v11 = 2048;
    v12 = v5;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_INFO, "%{public}@:%p (%p): connection invalidated", &v7, 0x20u);
  }

  return (*(*(a1 + 48) + 16))();
}

- (void)_sendResumed
{
  if (a1)
  {
    os_unfair_lock_lock((a1 + 40));
    if (*(a1 + 72) == 1)
    {
      *(a1 + 72) = 0;
      if (*(a1 + 73) == 1)
      {
        [(PKXPCService *)a1 _createConnectionIfPossible:?];
      }

      v2 = *(a1 + 48);
      if (v2)
      {
        v3 = [v2 remoteObjectProxy];
        [v3 serviceResumed];
      }

      WeakRetained = objc_loadWeakRetained((a1 + 112));
      if (objc_opt_respondsToSelector())
      {
        [WeakRetained remoteServiceDidResume:a1];
      }
    }

    os_unfair_lock_unlock((a1 + 40));
  }
}

- (void)_sendSuspended
{
  if (a1)
  {
    os_unfair_lock_lock((a1 + 40));
    if ((*(a1 + 72) & 1) == 0)
    {
      *(a1 + 72) = 1;
      v2 = *(a1 + 48);
      if (v2)
      {
        v3 = [v2 remoteObjectProxy];
        [v3 serviceSuspended];
      }

      WeakRetained = objc_loadWeakRetained((a1 + 112));
      if (objc_opt_respondsToSelector())
      {
        [WeakRetained remoteServiceDidSuspend:a1];
      }
    }

    os_unfair_lock_unlock((a1 + 40));
  }
}

- (void)foregroundActiveArbiter:(id)a3 didUpdateForegroundActiveState:(id)a4
{
  if (a4.var0)
  {
    [(PKXPCService *)self _sendResumed];
  }

  else
  {
    [(PKXPCService *)self _sendSuspended];
  }
}

void __61__PKXPCService__registerForApplicationLifeCycleNotifications__block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [(PKXPCService *)WeakRetained _sendResumed];
  }

  objc_autoreleasePoolPop(v3);
}

void __61__PKXPCService__registerForApplicationLifeCycleNotifications__block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [(PKXPCService *)WeakRetained _sendSuspended];
  }

  objc_autoreleasePoolPop(v3);
}

void __63__PKXPCService__registerForServiceListenerResumedNotifications__block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = PKLogFacilityTypeGetObject(5uLL);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = WeakRetained[3];
      v4 = 138543618;
      v5 = v3;
      v6 = 2048;
      v7 = WeakRetained;
      _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_INFO, "%{public}@:%p: listener resumed notification received", &v4, 0x16u);
    }

    [(PKXPCService *)WeakRetained _establishServiceConnection];
  }
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  objc_storeWeak(&self->_delegate, v4);

  os_unfair_lock_unlock(&self->_lock);
}

- (PKXPCServiceDelegate)delegate
{
  os_unfair_lock_lock(&self->_lock);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  os_unfair_lock_unlock(&self->_lock);

  return WeakRetained;
}

- (BOOL)isSuspended
{
  os_unfair_lock_lock(&self->_lock);
  suspendCallbacks = self->_suspendCallbacks;
  os_unfair_lock_unlock(&self->_lock);
  return suspendCallbacks;
}

- (BOOL)connectionEstablished
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_connection != 0;
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (void)setForceConnectionOnResume:(BOOL)a3
{
  os_unfair_lock_lock(&self->_lock);
  self->_forceConnectionOnResume = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)forceConnectionOnResume
{
  os_unfair_lock_lock(&self->_lock);
  forceConnectionOnResume = self->_forceConnectionOnResume;
  os_unfair_lock_unlock(&self->_lock);
  return forceConnectionOnResume;
}

void __50__PKXPCService__newWrappedErrorHandlerForHandler___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = 138543618;
    v8 = v6;
    v9 = 2114;
    v10 = v3;
    _os_log_error_impl(&dword_1AD337000, v4, OS_LOG_TYPE_ERROR, "%{public}@ XPC Error: %{public}@", &v7, 0x16u);
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

@end