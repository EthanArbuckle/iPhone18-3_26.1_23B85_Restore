@interface ICCloudServerListenerEndpointProvider
+ (id)_remoteObjectInterface;
- (ICCloudServerListenerEndpointProvider)init;
- (id)_listenerEndpointProviderConnection;
- (id)listenerEndpointForService:(int64_t)service error:(id *)error;
- (void)dealloc;
- (void)notifyDeviceSetupFinishedWithCompletion:(id)completion;
@end

@implementation ICCloudServerListenerEndpointProvider

- (ICCloudServerListenerEndpointProvider)init
{
  v3.receiver = self;
  v3.super_class = ICCloudServerListenerEndpointProvider;
  result = [(ICCloudServerListenerEndpointProvider *)&v3 init];
  if (result)
  {
    result->_lock._os_unfair_lock_opaque = 0;
  }

  return result;
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_listenerEndpointProviderConnection invalidate];
  v3.receiver = self;
  v3.super_class = ICCloudServerListenerEndpointProvider;
  [(ICCloudServerListenerEndpointProvider *)&v3 dealloc];
}

uint64_t __63__ICCloudServerListenerEndpointProvider__remoteObjectInterface__block_invoke()
{
  _remoteObjectInterface_sListenerEndpointProviderRemoteObjectInterface = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F2CCEED8];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)_remoteObjectInterface
{
  if (_remoteObjectInterface_sListenerEndpointProviderRemoteObjectInterfaceOnceToken != -1)
  {
    dispatch_once(&_remoteObjectInterface_sListenerEndpointProviderRemoteObjectInterfaceOnceToken, &__block_literal_global_22842);
  }

  v3 = _remoteObjectInterface_sListenerEndpointProviderRemoteObjectInterface;

  return v3;
}

- (id)_listenerEndpointProviderConnection
{
  v16 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  if (!self->_listenerEndpointProviderConnection)
  {
    v3 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138543362;
      selfCopy2 = self;
      _os_log_impl(&dword_1B4491000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: listenerEndpointProviderConnection [started]", &v12, 0xCu);
    }

    v4 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.itunescloudd.xpc" options:0];
    listenerEndpointProviderConnection = self->_listenerEndpointProviderConnection;
    self->_listenerEndpointProviderConnection = v4;

    v6 = self->_listenerEndpointProviderConnection;
    _remoteObjectInterface = [objc_opt_class() _remoteObjectInterface];
    [(NSXPCConnection *)v6 setRemoteObjectInterface:_remoteObjectInterface];

    [(NSXPCConnection *)self->_listenerEndpointProviderConnection resume];
  }

  v8 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = self->_listenerEndpointProviderConnection;
    v12 = 138543618;
    selfCopy2 = self;
    v14 = 2114;
    v15 = v9;
    _os_log_impl(&dword_1B4491000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: listenerEndpointProviderConnection [done] - connection:%{public}@", &v12, 0x16u);
  }

  v10 = self->_listenerEndpointProviderConnection;
  os_unfair_lock_unlock(&self->_lock);

  return v10;
}

- (void)notifyDeviceSetupFinishedWithCompletion:(id)completion
{
  completionCopy = completion;
  _listenerEndpointProviderConnection = [(ICCloudServerListenerEndpointProvider *)self _listenerEndpointProviderConnection];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __81__ICCloudServerListenerEndpointProvider_notifyDeviceSetupFinishedWithCompletion___block_invoke;
  v11[3] = &unk_1E7BF77C0;
  v6 = completionCopy;
  v12 = v6;
  v7 = [_listenerEndpointProviderConnection synchronousRemoteObjectProxyWithErrorHandler:v11];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __81__ICCloudServerListenerEndpointProvider_notifyDeviceSetupFinishedWithCompletion___block_invoke_2;
  v9[3] = &unk_1E7BF77C0;
  v10 = v6;
  v8 = v6;
  [v7 notifyDeviceSetupFinishedWithCompletion:v9];
}

- (id)listenerEndpointForService:(int64_t)service error:(id *)error
{
  errorCopy = error;
  v46 = *MEMORY[0x1E69E9840];
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__22829;
  v34 = __Block_byref_object_dispose__22830;
  v35 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__22829;
  v28 = __Block_byref_object_dispose__22830;
  v29 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  do
  {
    _listenerEndpointProviderConnection = [(ICCloudServerListenerEndpointProvider *)self _listenerEndpointProviderConnection];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __74__ICCloudServerListenerEndpointProvider_listenerEndpointForService_error___block_invoke;
    v19[3] = &unk_1E7BF6698;
    v19[4] = self;
    v19[5] = &v20;
    v19[7] = 10;
    v19[8] = service;
    v19[6] = &v24;
    v7 = [_listenerEndpointProviderConnection synchronousRemoteObjectProxyWithErrorHandler:v19];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __74__ICCloudServerListenerEndpointProvider_listenerEndpointForService_error___block_invoke_3;
    v18[3] = &unk_1E7BF66C0;
    v18[4] = self;
    v18[5] = &v24;
    v18[6] = &v30;
    v18[7] = service;
    [v7 getListenerEndpointForService:service completion:v18];
  }

  while (!v31[5] && v21[3] < 10);
  v8 = v25[5];
  if (v8)
  {
    if (errorCopy)
    {
      *errorCopy = v8;
    }

    v9 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = ICCloudServerSupportedServiceGetName(service);
      v11 = v31[5];
      v12 = v25[5];
      *buf = 138544386;
      selfCopy2 = self;
      v38 = 2114;
      v39 = v10;
      v40 = 2048;
      serviceCopy2 = service;
      v42 = 2114;
      v43 = v11;
      v44 = 2114;
      v45 = v12;
      _os_log_impl(&dword_1B4491000, v9, OS_LOG_TYPE_ERROR, "%{public}@: listenerEndpointForService [done with error] - service=%{public}@[%ld] - endpoint=%{public}@ - error=%{public}@", buf, 0x34u);
    }
  }

  else
  {
    v9 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v13 = ICCloudServerSupportedServiceGetName(service);
      v14 = v31[5];
      *buf = 138544130;
      selfCopy2 = self;
      v38 = 2114;
      v39 = v13;
      v40 = 2048;
      serviceCopy2 = service;
      v42 = 2114;
      v43 = v14;
      _os_log_impl(&dword_1B4491000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: listenerEndpointForService [done] - service=%{public}@[%ld] - endpoint=%{public}@", buf, 0x2Au);
    }
  }

  v15 = v31[5];
  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v24, 8);

  _Block_object_dispose(&v30, 8);

  return v15;
}

void __74__ICCloudServerListenerEndpointProvider_listenerEndpointForService_error___block_invoke(void *a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a2;
  ++*(*(a1[5] + 8) + 24);
  v4 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = a1[4];
    v6 = *(*(a1[5] + 8) + 24);
    v7 = a1[7];
    v8 = ICCloudServerSupportedServiceGetName(a1[8]);
    v9 = a1[8];
    v13 = 138544642;
    v14 = v5;
    v15 = 2048;
    v16 = v6;
    v17 = 2048;
    v18 = v7;
    v19 = 2114;
    v20 = v8;
    v21 = 2048;
    v22 = v9;
    v23 = 2114;
    v24 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "%{public}@: listenerEndpointForService - XPC Error retrieving endpoint [Attempt %ld of %ld] - service=%{public}@[%ld] - error=%{public}@", &v13, 0x3Eu);
  }

  v10 = [v3 copy];
  v11 = *(a1[6] + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;
}

void __74__ICCloudServerListenerEndpointProvider_listenerEndpointForService_error___block_invoke_3(void *a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    v8 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = a1[4];
      v10 = ICCloudServerSupportedServiceGetName(a1[7]);
      v11 = a1[7];
      v16 = 138544130;
      v17 = v9;
      v18 = 2114;
      v19 = v10;
      v20 = 2048;
      v21 = v11;
      v22 = 2114;
      v23 = v7;
      _os_log_impl(&dword_1B4491000, v8, OS_LOG_TYPE_ERROR, "%{public}@: listenerEndpointForService - XPC Error [no listener endpoint for service] - service=%{public}@[%ld] - error=%{public}@", &v16, 0x2Au);
    }

    v12 = [v7 copy];
    v13 = *(a1[5] + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;
  }

  else
  {
    objc_storeStrong((*(a1[6] + 8) + 40), a2);
    v15 = *(a1[5] + 8);
    v14 = *(v15 + 40);
    *(v15 + 40) = 0;
  }
}

@end