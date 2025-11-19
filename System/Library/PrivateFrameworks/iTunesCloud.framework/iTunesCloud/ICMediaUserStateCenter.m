@interface ICMediaUserStateCenter
+ (ICMediaUserStateCenter)shared;
- (ICMediaUserState)activeUserState;
- (NSArray)allUserStates;
- (id)_establishClientConnection;
- (id)_getUserStatesForcingRefresh:(BOOL)a3;
- (id)_initLazily:(BOOL)a3;
- (id)initLazily;
- (void)_applyServerStateUpdatedWithUserStates:(id)a3;
- (void)_clearConnection;
- (void)_handleServerStateUpdatedNotification:(id)a3;
- (void)_onAsyncServer:(id)a3;
- (void)_onSyncServer:(id)a3;
- (void)dealloc;
- (void)refreshUserStatesWithCompletion:(id)a3;
- (void)refreshUserStatesWithOptions:(unint64_t)a3 completion:(id)a4;
@end

@implementation ICMediaUserStateCenter

- (NSArray)allUserStates
{
  v19 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__6906;
  v13 = __Block_byref_object_dispose__6907;
  v14 = 0;
  accessQueue = self->_accessQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __39__ICMediaUserStateCenter_allUserStates__block_invoke;
  v8[3] = &unk_1E7BFA430;
  v8[4] = self;
  v8[5] = &v9;
  dispatch_sync(accessQueue, v8);
  v4 = os_log_create("com.apple.amp.iTunesCloud", "UserState");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v10[5] count];
    *buf = 138543618;
    v16 = self;
    v17 = 2048;
    v18 = v5;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: Accessing all user states, user states found: %lu", buf, 0x16u);
  }

  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

+ (ICMediaUserStateCenter)shared
{
  if (shared_sOnceToken != -1)
  {
    dispatch_once(&shared_sOnceToken, &__block_literal_global_6975);
  }

  v3 = shared_sShared;

  return v3;
}

uint64_t __32__ICMediaUserStateCenter_shared__block_invoke()
{
  shared_sShared = [[ICMediaUserStateCenter alloc] _initLazily:0];

  return MEMORY[0x1EEE66BB8]();
}

- (id)_establishClientConnection
{
  v36 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  xpcConnection = self->_xpcConnection;
  if (!xpcConnection)
  {
    v4 = os_log_create("com.apple.amp.iTunesCloud", "UserState");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v33 = self;
      _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: No connection found, creating new connection", buf, 0xCu);
    }

    v26 = objc_alloc_init(ICCloudServerListenerEndpointProvider);
    v31 = 0;
    v5 = [(ICCloudServerListenerEndpointProvider *)v26 listenerEndpointForService:5 error:&v31];
    v6 = v31;
    v7 = os_log_create("com.apple.amp.iTunesCloud", "UserState");
    v8 = v7;
    if (v6)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v9 = [v6 msv_description];
        *buf = 138543618;
        v33 = self;
        v34 = 2114;
        v35 = v9;
        _os_log_impl(&dword_1B4491000, v8, OS_LOG_TYPE_ERROR, "%{public}@: created xpc connection from listener endpoint error=%{public}@", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v33 = self;
      _os_log_impl(&dword_1B4491000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: created xpc connection from listener endpoint", buf, 0xCu);
    }

    if (v5)
    {
      v10 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithListenerEndpoint:v5];
      v11 = self->_xpcConnection;
      self->_xpcConnection = v10;

      v12 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F2CCEE18];
      v13 = MEMORY[0x1E695DFD8];
      v14 = objc_opt_class();
      v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
      [v12 setClasses:v15 forSelector:sel_getUserStatesForcingRefresh_withReply_ argumentIndex:0 ofReply:1];

      v16 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
      [v12 setClasses:v16 forSelector:sel_getUserStatesForcingRefresh_withReply_ argumentIndex:1 ofReply:1];

      v17 = MEMORY[0x1E695DFD8];
      v18 = objc_opt_class();
      v19 = [v17 setWithObjects:{v18, objc_opt_class(), 0}];
      [v12 setClasses:v19 forSelector:sel_getCachedUserStatesWithReply_ argumentIndex:0 ofReply:1];

      v20 = MEMORY[0x1E695DFD8];
      v21 = objc_opt_class();
      v22 = [v20 setWithObjects:{v21, objc_opt_class(), 0}];
      [v12 setClasses:v22 forSelector:sel_refreshSocialProfilesWithReply_ argumentIndex:0 ofReply:1];

      v23 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
      [v12 setClasses:v23 forSelector:sel_refreshSocialProfilesWithReply_ argumentIndex:1 ofReply:1];

      [(NSXPCConnection *)self->_xpcConnection setRemoteObjectInterface:v12];
      objc_initWeak(buf, self);
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __52__ICMediaUserStateCenter__establishClientConnection__block_invoke;
      v29[3] = &unk_1E7BFA328;
      objc_copyWeak(&v30, buf);
      [(NSXPCConnection *)self->_xpcConnection setInterruptionHandler:v29];
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __52__ICMediaUserStateCenter__establishClientConnection__block_invoke_92;
      v27[3] = &unk_1E7BFA328;
      objc_copyWeak(&v28, buf);
      [(NSXPCConnection *)self->_xpcConnection setInvalidationHandler:v27];
      [(NSXPCConnection *)self->_xpcConnection resume];
      objc_destroyWeak(&v28);
      objc_destroyWeak(&v30);
      objc_destroyWeak(buf);
    }

    else
    {
      v12 = os_log_create("com.apple.amp.iTunesCloud", "UserState");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v33 = self;
        v34 = 2114;
        v35 = v6;
        _os_log_impl(&dword_1B4491000, v12, OS_LOG_TYPE_ERROR, "%{public}@: Failed listenerEndpointForService:ICCloudServerSupportedServiceMediaUserStateCenterServer, err=%{public}@", buf, 0x16u);
      }
    }

    xpcConnection = self->_xpcConnection;
  }

  v24 = xpcConnection;
  os_unfair_lock_unlock(&self->_lock);

  return v24;
}

- (ICMediaUserState)activeUserState
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = [(ICMediaUserStateCenter *)self allUserStates];
  v4 = [v3 msv_firstWhere:&__block_literal_global_21];

  v5 = os_log_create("com.apple.amp.iTunesCloud", "UserState");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543618;
    v8 = self;
    v9 = 2114;
    v10 = v4;
    _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Accessing active user state: %{public}@", &v7, 0x16u);
  }

  return v4;
}

- (void)_applyServerStateUpdatedWithUserStates:(id)a3
{
  v4 = a3;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __65__ICMediaUserStateCenter__applyServerStateUpdatedWithUserStates___block_invoke;
  v7[3] = &unk_1E7BFA078;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_sync(accessQueue, v7);
}

void __65__ICMediaUserStateCenter__applyServerStateUpdatedWithUserStates___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v20 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        if (![*(*(a1 + 40) + 56) containsObject:*(*(&v12 + 1) + 8 * v6)])
        {

          v9 = os_log_create("com.apple.amp.iTunesCloud", "UserState");
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            v10 = *(a1 + 40);
            *buf = 138543618;
            v17 = v10;
            v18 = 2114;
            v19 = @"ICMediaUserStateCenterUserStatesDidChangeNotification";
            _os_log_impl(&dword_1B4491000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ User states updated. Posting %{public}@", buf, 0x16u);
          }

          objc_storeStrong((*(a1 + 40) + 56), *(a1 + 32));
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __65__ICMediaUserStateCenter__applyServerStateUpdatedWithUserStates___block_invoke_104;
          block[3] = &unk_1E7BFA300;
          block[4] = *(a1 + 40);
          dispatch_async(MEMORY[0x1E69E96A0], block);
          return;
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v12 objects:v20 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v7 = os_log_create("com.apple.amp.iTunesCloud", "UserState");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 40);
    *buf = 138543362;
    v17 = v8;
    _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ No change in user state data so not relaying change notification", buf, 0xCu);
  }
}

void __65__ICMediaUserStateCenter__applyServerStateUpdatedWithUserStates___block_invoke_104(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"ICMediaUserStateCenterUserStatesDidChangeNotification" object:*(a1 + 32)];
}

- (void)_handleServerStateUpdatedNotification:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = os_log_create("com.apple.amp.iTunesCloud", "UserState");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 name];
    *buf = 138543618;
    v10 = self;
    v11 = 2114;
    v12 = v6;
    _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Handling state update notification: %{public}@", buf, 0x16u);
  }

  v7 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__ICMediaUserStateCenter__handleServerStateUpdatedNotification___block_invoke;
  block[3] = &unk_1E7BFA300;
  block[4] = self;
  dispatch_async(v7, block);
}

void __64__ICMediaUserStateCenter__handleServerStateUpdatedNotification___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _getUserStatesForcingRefresh:0];
  [*(a1 + 32) _applyServerStateUpdatedWithUserStates:v2];
}

- (void)_onSyncServer:(id)a3
{
  v4 = a3;
  v5 = [(ICMediaUserStateCenter *)self _establishClientConnection];
  v6 = v5;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__6906;
  v15 = __Block_byref_object_dispose__6907;
  v16 = 0;
  if (v5)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __40__ICMediaUserStateCenter__onSyncServer___block_invoke;
    v10[3] = &unk_1E7BF4860;
    v10[4] = self;
    v10[5] = &v11;
    v7 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v10];
    v4[2](v4, v7, v12[5]);
  }

  else
  {
    v8 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"ICMediaUserStateError" code:9001 debugDescription:@"Failed to create connection for sync server"];
    v9 = v12[5];
    v12[5] = v8;

    v4[2](v4, 0, v12[5]);
  }

  _Block_object_dispose(&v11, 8);
}

void __40__ICMediaUserStateCenter__onSyncServer___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = os_log_create("com.apple.amp.iTunesCloud", "UserState");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v6 = [v3 msv_description];
      v10 = 138543618;
      v11 = v5;
      v12 = 2114;
      v13 = v6;
      _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "%{public}@: _onServer: completed error=%{public}@", &v10, 0x16u);
    }

    v7 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"ICMediaUserStateError" code:9001 underlyingError:v3 debugDescription:@"Failed to create connection for sync server"];
    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }
}

- (void)_onAsyncServer:(id)a3
{
  v4 = a3;
  cloudClient = self->_cloudClient;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __41__ICMediaUserStateCenter__onAsyncServer___block_invoke;
  v7[3] = &unk_1E7BF9EC8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(ICCloudClient *)cloudClient performBlockAfterServerSetup:v7];
}

void __41__ICMediaUserStateCenter__onAsyncServer___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _establishClientConnection];
  v3 = v2;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__6906;
  v12 = __Block_byref_object_dispose__6907;
  v13 = 0;
  if (v2)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __41__ICMediaUserStateCenter__onAsyncServer___block_invoke_2;
    v7[3] = &unk_1E7BF4860;
    v7[4] = *(a1 + 32);
    v7[5] = &v8;
    v4 = [v2 remoteObjectProxyWithErrorHandler:v7];
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v5 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"ICMediaUserStateError" code:9002 debugDescription:@"Failed to create connection for async server"];
    v6 = v9[5];
    v9[5] = v5;

    (*(*(a1 + 40) + 16))();
  }

  _Block_object_dispose(&v8, 8);
}

void __41__ICMediaUserStateCenter__onAsyncServer___block_invoke_2(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = os_log_create("com.apple.amp.iTunesCloud", "UserState");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v9 = 138543618;
      v10 = v5;
      v11 = 2114;
      v12 = v3;
      _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "%{public}@: Failed to create async server to get user states, err=%{public}@", &v9, 0x16u);
    }

    v6 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"ICMediaUserStateError" code:9002 underlyingError:v3 debugDescription:@"Failed to create connection for async server"];
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }
}

- (id)_getUserStatesForcingRefresh:(BOOL)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__6906;
  v11 = __Block_byref_object_dispose__6907;
  v12 = MEMORY[0x1E695E0F0];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __55__ICMediaUserStateCenter__getUserStatesForcingRefresh___block_invoke;
  v5[3] = &unk_1E7BF4838;
  v6 = a3;
  v5[4] = self;
  v5[5] = &v7;
  [(ICMediaUserStateCenter *)self _onSyncServer:v5];
  v3 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v3;
}

void __55__ICMediaUserStateCenter__getUserStatesForcingRefresh___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = os_log_create("com.apple.amp.iTunesCloud", "UserState");
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      v10 = [v6 msv_description];
      *buf = 138543618;
      v17 = v9;
      v18 = 2114;
      v19 = v10;
      _os_log_impl(&dword_1B4491000, v8, OS_LOG_TYPE_ERROR, "%{public}@: _onSyncServer: completed error=%{public}@", buf, 0x16u);
    }

    v11 = os_log_create("com.apple.amp.iTunesCloud", "UserState");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = *(a1 + 32);
      *buf = 138543618;
      v17 = v12;
      v18 = 2114;
      v19 = v6;
      _os_log_impl(&dword_1B4491000, v11, OS_LOG_TYPE_ERROR, "%{public}@: Failed to create sync server to get user states, err=%{public}@", buf, 0x16u);
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 32);
      *buf = 138543362;
      v17 = v13;
      _os_log_impl(&dword_1B4491000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: _onSyncServer: completed", buf, 0xCu);
    }

    v14 = *(a1 + 48);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __55__ICMediaUserStateCenter__getUserStatesForcingRefresh___block_invoke_96;
    v15[3] = &unk_1E7BF4810;
    v15[4] = *(a1 + 40);
    [v5 getUserStatesForcingRefresh:v14 withReply:v15];
  }
}

uint64_t __55__ICMediaUserStateCenter__getUserStatesForcingRefresh___block_invoke_96(uint64_t a1, void *a2)
{
  v3 = [a2 copy];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x1EEE66BB8](v3, v5);
}

- (void)_clearConnection
{
  os_unfair_lock_lock(&self->_lock);
  [(NSXPCConnection *)self->_xpcConnection setInvalidationHandler:0];
  [(NSXPCConnection *)self->_xpcConnection invalidate];
  xpcConnection = self->_xpcConnection;
  self->_xpcConnection = 0;

  os_unfair_lock_unlock(&self->_lock);
  completionHandlersQueue = self->_completionHandlersQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__ICMediaUserStateCenter__clearConnection__block_invoke;
  block[3] = &unk_1E7BFA300;
  block[4] = self;
  dispatch_sync(completionHandlersQueue, block);
}

uint64_t __42__ICMediaUserStateCenter__clearConnection__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v1 = *(*(a1 + 32) + 32);
  v2 = [v1 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v12;
    v5 = MEMORY[0x1E695E0F0];
    do
    {
      v6 = 0;
      do
      {
        if (*v12 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v7 = *(*(&v11 + 1) + 8 * v6);
        v8 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"ICMediaUserStateError" code:9004 underlyingError:0 debugDescription:@"XPC connection was invalidated."];
        (*(v7 + 16))(v7, v5, v8);

        ++v6;
      }

      while (v3 != v6);
      v3 = [v1 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v3);
  }

  return [*(*(a1 + 32) + 32) removeAllObjects];
}

void __52__ICMediaUserStateCenter__establishClientConnection__block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = os_log_create("com.apple.amp.iTunesCloud", "UserState");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = 138543362;
    v4 = WeakRetained;
    _os_log_impl(&dword_1B4491000, v2, OS_LOG_TYPE_ERROR, "%{public}@: XPC connection interrupted.", &v3, 0xCu);
  }

  [WeakRetained _clearConnection];
}

void __52__ICMediaUserStateCenter__establishClientConnection__block_invoke_92(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = os_log_create("com.apple.amp.iTunesCloud", "UserState");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = 138543362;
    v4 = WeakRetained;
    _os_log_impl(&dword_1B4491000, v2, OS_LOG_TYPE_ERROR, "%{public}@: XPC connection invalidated.", &v3, 0xCu);
  }

  [WeakRetained _clearConnection];
}

- (void)refreshUserStatesWithCompletion:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = os_log_create("com.apple.amp.iTunesCloud", "UserState");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = self;
    _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Force refreshing user states, calling refreshUserStatesWithCompletion:", &buf, 0xCu);
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __58__ICMediaUserStateCenter_refreshUserStatesWithCompletion___block_invoke;
  v14[3] = &unk_1E7BF9EF0;
  v14[4] = self;
  v6 = MEMORY[0x1B8C781E0](v14);
  *&buf = 0;
  *(&buf + 1) = &buf;
  v16 = 0x2020000000;
  v17 = 0;
  completionHandlersQueue = self->_completionHandlersQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__ICMediaUserStateCenter_refreshUserStatesWithCompletion___block_invoke_3;
  block[3] = &unk_1E7BF7BF0;
  p_buf = &buf;
  block[4] = self;
  v8 = v4;
  v12 = v8;
  dispatch_sync(completionHandlersQueue, block);
  if ((*(*(&buf + 1) + 24) & 1) == 0)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __58__ICMediaUserStateCenter_refreshUserStatesWithCompletion___block_invoke_4;
    v9[3] = &unk_1E7BF47E8;
    v9[4] = self;
    v10 = v6;
    [(ICMediaUserStateCenter *)self _onAsyncServer:v9];
  }

  _Block_object_dispose(&buf, 8);
}

void __58__ICMediaUserStateCenter_refreshUserStatesWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(v7 + 40);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__ICMediaUserStateCenter_refreshUserStatesWithCompletion___block_invoke_2;
  block[3] = &unk_1E7BFA178;
  block[4] = v7;
  v12 = v5;
  v13 = v6;
  v9 = v6;
  v10 = v5;
  dispatch_async(v8, block);
}

void __58__ICMediaUserStateCenter_refreshUserStatesWithCompletion___block_invoke_3(void *a1)
{
  *(*(a1[6] + 8) + 24) = [*(a1[4] + 32) count] != 0;
  v2 = a1[5];
  v3 = *(a1[4] + 32);
  v4 = MEMORY[0x1B8C781E0](v2);
  [v3 addObject:v4];
}

void __58__ICMediaUserStateCenter_refreshUserStatesWithCompletion___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = os_log_create("com.apple.amp.iTunesCloud", "UserState");
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      v10 = [v6 msv_description];
      *buf = 138543618;
      v16 = v9;
      v17 = 2114;
      v18 = v10;
      _os_log_impl(&dword_1B4491000, v8, OS_LOG_TYPE_ERROR, "%{public}@: _onAsyncServer: completed error=%{public}@", buf, 0x16u);
    }

    v11 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"ICMediaUserStateError" code:9002 underlyingError:v6 debugDescription:@"Error creating async server during force refresh user states"];
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 32);
      *buf = 138543362;
      v16 = v12;
      _os_log_impl(&dword_1B4491000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: _onAsyncServer: completed", buf, 0xCu);
    }

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __58__ICMediaUserStateCenter_refreshUserStatesWithCompletion___block_invoke_30;
    v13[3] = &unk_1E7BF59C0;
    v14 = *(a1 + 40);
    [v5 getUserStatesForcingRefresh:1 withReply:v13];
    v11 = v14;
  }
}

void __58__ICMediaUserStateCenter_refreshUserStatesWithCompletion___block_invoke_30(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if (a3)
  {
    a3 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"ICMediaUserStateError" code:9003 underlyingError:a3 debugDescription:@"Failed to force refresh user states"];
  }

  (*(*(a1 + 32) + 16))();
}

void __58__ICMediaUserStateCenter_refreshUserStatesWithCompletion___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 32) copy];
  [*(*(a1 + 32) + 32) removeAllObjects];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = v2;
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        (*(*(*(&v8 + 1) + 8 * v7) + 16))(*(*(&v8 + 1) + 8 * v7));
        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)refreshUserStatesWithOptions:(unint64_t)a3 completion:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = v6;
  if (a3)
  {
    if (a3)
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __66__ICMediaUserStateCenter_refreshUserStatesWithOptions_completion___block_invoke_3;
      v10[3] = &unk_1E7BF47C0;
      v11 = v6;
      [(ICMediaUserStateCenter *)self _onAsyncServer:v10];
      v9 = v11;
    }

    else
    {
      v8 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v15 = self;
        v16 = 2048;
        v17 = a3;
        _os_log_impl(&dword_1B4491000, v8, OS_LOG_TYPE_ERROR, "%{public}@ refreshUserStatesWithOptions:completion: called with invalid options: %lu", buf, 0x16u);
      }

      v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7002 userInfo:0];
      (v7)[2](v7, 0, v9);
    }
  }

  else
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __66__ICMediaUserStateCenter_refreshUserStatesWithOptions_completion___block_invoke;
    v12[3] = &unk_1E7BF47C0;
    v13 = v6;
    [(ICMediaUserStateCenter *)self _onAsyncServer:v12];
    v9 = v13;
  }
}

void __66__ICMediaUserStateCenter_refreshUserStatesWithOptions_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    v5 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"ICMediaUserStateError" code:9002 underlyingError:a3 debugDescription:@"Error creating async server"];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __66__ICMediaUserStateCenter_refreshUserStatesWithOptions_completion___block_invoke_2;
    v6[3] = &unk_1E7BF59C0;
    v7 = *(a1 + 32);
    [a2 getUserStatesForcingRefresh:1 withReply:v6];
  }
}

void __66__ICMediaUserStateCenter_refreshUserStatesWithOptions_completion___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    v5 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"ICMediaUserStateError" code:9002 underlyingError:a3 debugDescription:@"Error creating async server"];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __66__ICMediaUserStateCenter_refreshUserStatesWithOptions_completion___block_invoke_4;
    v6[3] = &unk_1E7BF59C0;
    v7 = *(a1 + 32);
    [a2 refreshSocialProfilesWithReply:v6];
  }
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696ABB0] defaultCenter];
  [v3 removeObserver:self];

  [(NSXPCConnection *)self->_xpcConnection invalidate];
  v4.receiver = self;
  v4.super_class = ICMediaUserStateCenter;
  [(ICMediaUserStateCenter *)&v4 dealloc];
}

- (id)_initLazily:(BOOL)a3
{
  v3 = a3;
  v29 = *MEMORY[0x1E69E9840];
  v24.receiver = self;
  v24.super_class = ICMediaUserStateCenter;
  v4 = [(ICMediaUserStateCenter *)&v24 init];
  if (v4)
  {
    v5 = dispatch_queue_create("com.apple.iTunesCloud.ICUserStateCenter.accessQueue", 0);
    accessQueue = v4->_accessQueue;
    v4->_accessQueue = v5;

    v7 = dispatch_queue_create("com.apple.iTunesCloud.ICUserStateCenter.completionHandlersQueue", 0);
    completionHandlersQueue = v4->_completionHandlersQueue;
    v4->_completionHandlersQueue = v7;

    v4->_lock._os_unfair_lock_opaque = 0;
    v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:1];
    refreshUserStateCompletionHandlers = v4->_refreshUserStateCompletionHandlers;
    v4->_refreshUserStateCompletionHandlers = v9;

    v11 = objc_alloc_init(ICCloudClient);
    cloudClient = v4->_cloudClient;
    v4->_cloudClient = v11;

    v13 = os_log_create("com.apple.amp.iTunesCloud", "UserState");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v26 = v4;
      v27 = 1024;
      v28 = v3;
      _os_log_impl(&dword_1B4491000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: _initLazily %{BOOL}u", buf, 0x12u);
    }

    v14 = v4->_accessQueue;
    v18 = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = __38__ICMediaUserStateCenter__initLazily___block_invoke;
    v21 = &unk_1E7BF7860;
    v23 = v3;
    v15 = v4;
    v22 = v15;
    dispatch_async(v14, &v18);
    v16 = [MEMORY[0x1E696ABB0] defaultCenter];
    [v16 addObserver:v15 selector:sel__handleServerStateUpdatedNotification_ name:@"ICMediaUserStateCenterServerStateUpdatedNotification" object:0];
  }

  return v4;
}

void __38__ICMediaUserStateCenter__initLazily___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = *(a1 + 32);
  if (v2 == 1)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __38__ICMediaUserStateCenter__initLazily___block_invoke_2;
    v9[3] = &unk_1E7BF4768;
    v10 = v3;
    [v10 _onAsyncServer:v9];
    v4 = v10;
  }

  else
  {
    v5 = [v3 _getUserStatesForcingRefresh:0];
    v6 = *(a1 + 32);
    v7 = *(v6 + 56);
    *(v6 + 56) = v5;

    v4 = os_log_create("com.apple.amp.iTunesCloud", "UserState");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      *buf = 138543362;
      v12 = v8;
      _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: Fetched userStates from init", buf, 0xCu);
    }
  }
}

void __38__ICMediaUserStateCenter__initLazily___block_invoke_2(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __38__ICMediaUserStateCenter__initLazily___block_invoke_3;
  v3[3] = &unk_1E7BF4740;
  v4 = *(a1 + 32);
  [a2 getCachedUserStatesWithReply:v3];
}

- (id)initLazily
{
  v3 = [[ICMediaUserStateCenter alloc] _initLazily:1];

  return v3;
}

@end