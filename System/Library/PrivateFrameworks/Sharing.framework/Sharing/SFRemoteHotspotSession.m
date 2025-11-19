@interface SFRemoteHotspotSession
- (SFRemoteHotspotSession)init;
- (SFRemoteHotspotSessionDelegate)delegate;
- (void)enableHotspotForDevice:(id)a3 withCompletionHandler:(id)a4;
- (void)enableRemoteHotspotForDevice:(id)a3 withCompletionHandler:(id)a4;
- (void)startBrowsing;
- (void)stopBrowsing;
- (void)updatedFoundDeviceList:(id)a3;
- (void)xpcManagerConnectionInterrupted;
@end

@implementation SFRemoteHotspotSession

- (SFRemoteHotspotSession)init
{
  v7.receiver = self;
  v7.super_class = SFRemoteHotspotSession;
  v2 = [(SFRemoteHotspotSession *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_browsing = 0;
    connectionProxy = v2->_connectionProxy;
    v2->_connectionProxy = 0;

    v5 = +[SFCompanionXPCManager sharedManager];
    [v5 registerObserver:v3];
  }

  return v3;
}

- (void)startBrowsing
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = tethering_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A9662000, v3, OS_LOG_TYPE_DEFAULT, "Starting browsing", buf, 2u);
  }

  if (![(SFRemoteHotspotSession *)v2 browsing])
  {
    [(SFRemoteHotspotSession *)v2 setBrowsing:1];
    v4 = +[SFCompanionXPCManager sharedManager];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __39__SFRemoteHotspotSession_startBrowsing__block_invoke;
    v5[3] = &unk_1E788C4F8;
    v5[4] = v2;
    [v4 remoteHotspotSessionForClient:v2 withCompletionHandler:v5];
  }

  objc_sync_exit(v2);
}

void __39__SFRemoteHotspotSession_startBrowsing__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([*(a1 + 32) browsing])
  {
    if (v5)
    {
      v7 = _os_activity_create(&dword_1A9662000, "Sharing/SFRemoteHotspotSession/startBrowsing", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
      state.opaque[0] = 0;
      state.opaque[1] = 0;
      os_activity_scope_enter(v7, &state);
      [*(a1 + 32) setConnectionProxy:v5];
      v8 = [*(a1 + 32) connectionProxy];
      [v8 startBrowsing];

      v9 = tethering_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 0;
        _os_log_impl(&dword_1A9662000, v9, OS_LOG_TYPE_DEFAULT, "Started browsing", v13, 2u);
      }

      os_activity_scope_leave(&state);
    }

    else
    {
      v11 = tethering_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        __39__SFRemoteHotspotSession_startBrowsing__block_invoke_cold_1(v6, v11);
      }

      v12 = tethering_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        __39__SFRemoteHotspotSession_startBrowsing__block_invoke_cold_2(v6, v12);
      }

      [*(a1 + 32) setBrowsing:0];
    }
  }

  else
  {
    v10 = tethering_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(state.opaque[0]) = 0;
      _os_log_impl(&dword_1A9662000, v10, OS_LOG_TYPE_DEFAULT, "Browsing stopped while getting proxy", &state, 2u);
    }
  }
}

- (void)stopBrowsing
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = tethering_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf.opaque[0]) = 0;
    _os_log_impl(&dword_1A9662000, v3, OS_LOG_TYPE_DEFAULT, "Stopping browsing", &buf, 2u);
  }

  if ([(SFRemoteHotspotSession *)v2 browsing])
  {
    v4 = _os_activity_create(&dword_1A9662000, "Sharing/SFRemoteHotspotSession/stopBrowsing", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    buf.opaque[0] = 0;
    buf.opaque[1] = 0;
    os_activity_scope_enter(v4, &buf);
    [(SFRemoteHotspotSession *)v2 setBrowsing:0];
    v5 = [(SFRemoteHotspotSession *)v2 connectionProxy];
    [v5 stopBrowsing];

    v6 = tethering_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_1A9662000, v6, OS_LOG_TYPE_DEFAULT, "Stopped browsing", v7, 2u);
    }

    os_activity_scope_leave(&buf);
  }

  objc_sync_exit(v2);
}

- (void)enableHotspotForDevice:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SFRemoteHotspotSession *)self connectionProxy];

  if (v8)
  {
    v9 = _os_activity_create(&dword_1A9662000, "Sharing/SFRemoteHotspotSession/enableHotspotForDevice", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v9, &state);
    v10 = [(SFRemoteHotspotSession *)self connectionProxy];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __71__SFRemoteHotspotSession_enableHotspotForDevice_withCompletionHandler___block_invoke;
    v11[3] = &unk_1E788C520;
    v12 = v7;
    [v10 enableHotspotForDevice:v6 withCompletionHandler:v11];

    os_activity_scope_leave(&state);
  }
}

void __71__SFRemoteHotspotSession_enableHotspotForDevice_withCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = a2;
  v8 = [v6 name];
  v7 = [v6 password];

  (*(v4 + 16))(v4, v8, v7, v5);
}

- (void)enableRemoteHotspotForDevice:(id)a3 withCompletionHandler:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = self;
  objc_sync_enter(v8);
  v9 = tethering_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf.opaque[0]) = 138412290;
    *(buf.opaque + 4) = v6;
    _os_log_impl(&dword_1A9662000, v9, OS_LOG_TYPE_DEFAULT, "Enabling %@", &buf, 0xCu);
  }

  v10 = [(SFRemoteHotspotSession *)v8 connectionProxy];

  if (v10)
  {
    v11 = _os_activity_create(&dword_1A9662000, "Sharing/SFRemoteHotspotSession/enableHotspotForDevice", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    buf.opaque[0] = 0;
    buf.opaque[1] = 0;
    os_activity_scope_enter(v11, &buf);
    v12 = [(SFRemoteHotspotSession *)v8 connectionProxy];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __77__SFRemoteHotspotSession_enableRemoteHotspotForDevice_withCompletionHandler___block_invoke;
    v16[3] = &unk_1E788C548;
    v17 = v6;
    v18 = v7;
    [v12 enableHotspotForDevice:v17 withCompletionHandler:v16];

    os_activity_scope_leave(&buf);
  }

  else
  {
    v13 = MEMORY[0x1E696ABC0];
    v19 = *MEMORY[0x1E696A578];
    v20 = @"XPC connection unavailable";
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v14 = [v13 errorWithDomain:*MEMORY[0x1E696A798] code:57 userInfo:v11];
    (*(v7 + 2))(v7, 0, v14);
  }

  objc_sync_exit(v8);
  v15 = *MEMORY[0x1E69E9840];
}

void __77__SFRemoteHotspotSession_enableRemoteHotspotForDevice_withCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = tethering_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v10 = 138412802;
    v11 = v8;
    v12 = 2112;
    v13 = v5;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&dword_1A9662000, v7, OS_LOG_TYPE_DEFAULT, "Enabled %@, %@, error (%@)", &v10, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
  v9 = *MEMORY[0x1E69E9840];
}

- (void)updatedFoundDeviceList:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = tethering_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&dword_1A9662000, v5, OS_LOG_TYPE_DEFAULT, "Updated device list %@", &v8, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained session:self updatedFoundDevices:v4];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)xpcManagerConnectionInterrupted
{
  v2 = tethering_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_1A9662000, v2, OS_LOG_TYPE_DEFAULT, "XPC Connection was interrupted", v3, 2u);
  }
}

- (SFRemoteHotspotSessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __39__SFRemoteHotspotSession_startBrowsing__block_invoke_cold_1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = [a1 description];
  v5 = 138412290;
  v6 = v3;
  _os_log_fault_impl(&dword_1A9662000, a2, OS_LOG_TYPE_FAULT, "Couldn't retrieve proxy %@", &v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

void __39__SFRemoteHotspotSession_startBrowsing__block_invoke_cold_2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1A9662000, a2, OS_LOG_TYPE_ERROR, "remoteHotspotSessionForClient: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end