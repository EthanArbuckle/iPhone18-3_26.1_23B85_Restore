@interface SESSessionManager
+ (id)getVehicleReports:(id *)a3;
+ (id)pauseRangingForReaderIdentifier:(id)a3 durationInSec:(double)a4 withAppletIdentifier:(id)a5;
+ (id)requestAssertionForKeyID:(id)a3 withAppletID:(id)a4 withOptions:(id)a5 error:(id *)a6;
+ (id)resumeRangingForReaderIdentifier:(id)a3 withAppletIdentifier:(id)a4;
+ (id)sharedInstance;
+ (void)setMachServiceName:(id)a3;
- (id)remoteObjectProxyWithErrorHandler:(id)a3;
- (id)startACWGSessionWithOptions:(id)a3 startCallback:(id)a4;
- (id)startAssertionForKeyIdentifier:(id)a3 withAppletIdentifier:(id)a4 withOptions:(id)a5 error:(id *)a6;
- (id)startDCKAssertionForKeyIdentifier:(id)a3 withOptions:(id)a4 error:(id *)a5;
- (id)startDigitalCarKeySessionWithOptions:(id)a3 startCallback:(id)a4;
- (id)startRKESessionWithOptions:(id)a3 startCallback:(id)a4;
- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)a3;
- (void)connect;
- (void)connectionDidInterrupt;
- (void)connectionDidInvalidate;
- (void)sessionEnded:(id)a3;
@end

@implementation SESSessionManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[SESSessionManager sharedInstance];
  }

  v3 = sharedInstance_instance;

  return v3;
}

uint64_t __35__SESSessionManager_sharedInstance__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharedInstance_instance;
  sharedInstance_instance = v0;

  v2 = objc_opt_new();
  [sharedInstance_instance setSessions:v2];

  v3 = sharedInstance_instance;

  return [v3 setServiceName:@"com.apple.seserviced.session"];
}

- (id)startDigitalCarKeySessionWithOptions:(id)a3 startCallback:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = SESDefaultLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v26 = v6;
    _os_log_impl(&dword_1C7B9A000, v8, OS_LOG_TYPE_INFO, "startDigitalCarKeySessionWithOptions %@", buf, 0xCu);
  }

  v9 = +[SESDCKSession newInstance];
  [v9 setDidStartCallback:v7];

  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __72__SESSessionManager_startDigitalCarKeySessionWithOptions_startCallback___block_invoke;
  v24[3] = &unk_1E82D1420;
  v24[4] = self;
  [v9 setDidEndCallback:v24];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __72__SESSessionManager_startDigitalCarKeySessionWithOptions_startCallback___block_invoke_2;
  v22[3] = &unk_1E82D1448;
  v10 = v9;
  v23 = v10;
  v11 = [(SESSessionManager *)self synchronousRemoteObjectProxyWithErrorHandler:v22];
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __72__SESSessionManager_startDigitalCarKeySessionWithOptions_startCallback___block_invoke_510;
  v19 = &unk_1E82D1470;
  v12 = v10;
  v20 = v12;
  v21 = self;
  [v11 startSESDCKSession:v12 completion:&v16];

  [v12 resume];
  v13 = v12;

  v14 = *MEMORY[0x1E69E9840];
  return v12;
}

void __72__SESSessionManager_startDigitalCarKeySessionWithOptions_startCallback___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = SESDefaultLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 138412290;
      v7 = v3;
      _os_log_impl(&dword_1C7B9A000, v4, OS_LOG_TYPE_ERROR, "Failed to get proxy %@", &v6, 0xCu);
    }

    [*(a1 + 32) endSession];
  }

  v5 = *MEMORY[0x1E69E9840];
}

void __72__SESSessionManager_startDigitalCarKeySessionWithOptions_startCallback___block_invoke_510(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = SESDefaultLogObject();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v12 = 138412290;
      v13 = v6;
      _os_log_impl(&dword_1C7B9A000, v8, OS_LOG_TYPE_ERROR, "Proxy error %@", &v12, 0xCu);
    }

    [*(a1 + 32) endSession];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 32);
      v12 = 138412290;
      v13 = v9;
      _os_log_impl(&dword_1C7B9A000, v8, OS_LOG_TYPE_INFO, "Adding new SESDCKSession %@", &v12, 0xCu);
    }

    v10 = *(*(a1 + 40) + 8);
    objc_sync_enter(v10);
    [*(*(a1 + 40) + 8) addObject:*(a1 + 32)];
    objc_sync_exit(v10);

    [*(a1 + 32) setProxy:v5];
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (id)startRKESessionWithOptions:(id)a3 startCallback:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = SESDefaultLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v26 = v6;
    _os_log_impl(&dword_1C7B9A000, v8, OS_LOG_TYPE_INFO, "startRKESessionWithOptions %@", buf, 0xCu);
  }

  v9 = +[SESRKESession newInstance];
  [v9 setDidStartCallback:v7];

  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __62__SESSessionManager_startRKESessionWithOptions_startCallback___block_invoke;
  v24[3] = &unk_1E82D1420;
  v24[4] = self;
  [v9 setDidEndCallback:v24];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __62__SESSessionManager_startRKESessionWithOptions_startCallback___block_invoke_2;
  v22[3] = &unk_1E82D1448;
  v10 = v9;
  v23 = v10;
  v11 = [(SESSessionManager *)self synchronousRemoteObjectProxyWithErrorHandler:v22];
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __62__SESSessionManager_startRKESessionWithOptions_startCallback___block_invoke_513;
  v19 = &unk_1E82D1470;
  v12 = v10;
  v20 = v12;
  v21 = self;
  [v11 startSESRKESession:v12 options:v6 completion:&v16];

  [v12 resume];
  v13 = v12;

  v14 = *MEMORY[0x1E69E9840];
  return v12;
}

void __62__SESSessionManager_startRKESessionWithOptions_startCallback___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = SESDefaultLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 138412290;
      v7 = v3;
      _os_log_impl(&dword_1C7B9A000, v4, OS_LOG_TYPE_ERROR, "Failed to get proxy %@", &v6, 0xCu);
    }

    [*(a1 + 32) endSession];
  }

  v5 = *MEMORY[0x1E69E9840];
}

void __62__SESSessionManager_startRKESessionWithOptions_startCallback___block_invoke_513(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = SESDefaultLogObject();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v12 = 138412290;
      v13 = v6;
      _os_log_impl(&dword_1C7B9A000, v8, OS_LOG_TYPE_ERROR, "Proxy error %@", &v12, 0xCu);
    }

    [*(a1 + 32) endSessionWithError:v6];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 32);
      v12 = 138412290;
      v13 = v9;
      _os_log_impl(&dword_1C7B9A000, v8, OS_LOG_TYPE_INFO, "Adding new SESRKESession %@", &v12, 0xCu);
    }

    v10 = *(*(a1 + 40) + 8);
    objc_sync_enter(v10);
    [*(*(a1 + 40) + 8) addObject:*(a1 + 32)];
    objc_sync_exit(v10);

    [*(a1 + 32) setProxy:v5];
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (id)startACWGSessionWithOptions:(id)a3 startCallback:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = SESDefaultLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v26 = v6;
    _os_log_impl(&dword_1C7B9A000, v8, OS_LOG_TYPE_INFO, "startACWGSessionWithOptions %@", buf, 0xCu);
  }

  v9 = +[SESACWGSession newInstance];
  [v9 setDidStartCallback:v7];

  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __63__SESSessionManager_startACWGSessionWithOptions_startCallback___block_invoke;
  v24[3] = &unk_1E82D1420;
  v24[4] = self;
  [v9 setDidEndCallback:v24];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __63__SESSessionManager_startACWGSessionWithOptions_startCallback___block_invoke_2;
  v22[3] = &unk_1E82D1448;
  v10 = v9;
  v23 = v10;
  v11 = [(SESSessionManager *)self synchronousRemoteObjectProxyWithErrorHandler:v22];
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __63__SESSessionManager_startACWGSessionWithOptions_startCallback___block_invoke_515;
  v19 = &unk_1E82D1470;
  v12 = v10;
  v20 = v12;
  v21 = self;
  [v11 startSESACWGSession:v12 completion:&v16];

  [v12 resume];
  v13 = v12;

  v14 = *MEMORY[0x1E69E9840];
  return v12;
}

void __63__SESSessionManager_startACWGSessionWithOptions_startCallback___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = SESDefaultLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 138412290;
      v7 = v3;
      _os_log_impl(&dword_1C7B9A000, v4, OS_LOG_TYPE_ERROR, "Failed to get proxy %@", &v6, 0xCu);
    }

    [*(a1 + 32) endSession];
  }

  v5 = *MEMORY[0x1E69E9840];
}

void __63__SESSessionManager_startACWGSessionWithOptions_startCallback___block_invoke_515(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = SESDefaultLogObject();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v12 = 138412290;
      v13 = v6;
      _os_log_impl(&dword_1C7B9A000, v8, OS_LOG_TYPE_ERROR, "Proxy error %@", &v12, 0xCu);
    }

    [*(a1 + 32) endSession];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 32);
      v12 = 138412290;
      v13 = v9;
      _os_log_impl(&dword_1C7B9A000, v8, OS_LOG_TYPE_INFO, "Adding new SESACWGSession %@", &v12, 0xCu);
    }

    v10 = *(*(a1 + 40) + 8);
    objc_sync_enter(v10);
    [*(*(a1 + 40) + 8) addObject:*(a1 + 32)];
    objc_sync_exit(v10);

    [*(a1 + 32) setProxy:v5];
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)sessionEnded:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self->_sessions;
  objc_sync_enter(v5);
  v6 = SESDefaultLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&dword_1C7B9A000, v6, OS_LOG_TYPE_INFO, "Session %@ ended", &v8, 0xCu);
  }

  [(NSMutableSet *)self->_sessions removeObject:v4];
  objc_sync_exit(v5);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)connect
{
  v2 = self;
  objc_sync_enter(v2);
  if (v2->_connection)
  {
    v3 = SESDefaultLogObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_1C7B9A000, v3, OS_LOG_TYPE_INFO, "Already XPC connected", buf, 2u);
    }
  }

  else
  {
    v4 = objc_alloc(MEMORY[0x1E696B0B8]);
    v5 = [(SESSessionManager *)v2 serviceName];
    v6 = [v4 initWithMachServiceName:v5 options:4096];
    connection = v2->_connection;
    v2->_connection = v6;

    v8 = +[SESSessionManagerInterface interface];
    [(NSXPCConnection *)v2->_connection setRemoteObjectInterface:v8];

    v9 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F47677F0];
    [(NSXPCConnection *)v2->_connection setExportedInterface:v9];

    [(NSXPCConnection *)v2->_connection setExportedObject:v2];
    objc_initWeak(buf, v2);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __28__SESSessionManager_connect__block_invoke;
    v14[3] = &unk_1E82D1148;
    objc_copyWeak(&v15, buf);
    [(NSXPCConnection *)v2->_connection setInterruptionHandler:v14];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __28__SESSessionManager_connect__block_invoke_559;
    v12[3] = &unk_1E82D1148;
    objc_copyWeak(&v13, buf);
    [(NSXPCConnection *)v2->_connection setInvalidationHandler:v12];
    [(NSXPCConnection *)v2->_connection resume];
    v10 = SESDefaultLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *v11 = 0;
      _os_log_impl(&dword_1C7B9A000, v10, OS_LOG_TYPE_INFO, "XPC connected", v11, 2u);
    }

    objc_destroyWeak(&v13);
    objc_destroyWeak(&v15);
    objc_destroyWeak(buf);
  }

  objc_sync_exit(v2);
}

void __28__SESSessionManager_connect__block_invoke(uint64_t a1)
{
  v2 = SESDefaultLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_1C7B9A000, v2, OS_LOG_TYPE_INFO, "Connection interrupted", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained connectionDidInterrupt];
}

void __28__SESSessionManager_connect__block_invoke_559(uint64_t a1)
{
  v2 = SESDefaultLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_1C7B9A000, v2, OS_LOG_TYPE_INFO, "Connection invalidated", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained connectionDidInvalidate];
}

- (void)connectionDidInterrupt
{
  obj = self;
  objc_sync_enter(obj);
  [(NSXPCConnection *)obj->_connection invalidate];
  objc_sync_exit(obj);
}

- (void)connectionDidInvalidate
{
  v21 = *MEMORY[0x1E69E9840];
  obj = self->_sessions;
  objc_sync_enter(obj);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = [(NSMutableSet *)self->_sessions copy];
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = *v17;
    v6 = MEMORY[0x1E69E5148];
    do
    {
      v7 = 0;
      do
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v16 + 1) + 8 * v7);
        v9 = SESDefaultLogObject();
        v10 = *v6;
        v11 = SESCreateAndLogError();
        [v8 didEndUnexpectedly:v11];

        ++v7;
      }

      while (v4 != v7);
      v4 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v4);
  }

  objc_sync_exit(obj);
  v12 = self;
  objc_sync_enter(v12);
  connection = v12->_connection;
  v12->_connection = 0;

  objc_sync_exit(v12);
  v14 = *MEMORY[0x1E69E9840];
}

+ (id)pauseRangingForReaderIdentifier:(id)a3 durationInSec:(double)a4 withAppletIdentifier:(id)a5
{
  v38 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a5;
  v9 = SESDefaultLogObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 138412802;
    *&buf[4] = v7;
    *&buf[12] = 2048;
    *&buf[14] = a4;
    *&buf[22] = 2112;
    v35 = v8;
    _os_log_impl(&dword_1C7B9A000, v9, OS_LOG_TYPE_INFO, "pauseRangingForReaderIdentifier %@ durationInSec %f appletIdentifier %@", buf, 0x20u);
  }

  if (a4 >= 1.0)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v35 = __Block_byref_object_copy__7;
    v36 = __Block_byref_object_dispose__7;
    v37 = 0;
    v28 = 0;
    v29 = &v28;
    v30 = 0x2020000000;
    v31 = 0;
    v13 = +[SESSessionManager sharedInstance];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __88__SESSessionManager_pauseRangingForReaderIdentifier_durationInSec_withAppletIdentifier___block_invoke;
    v27[3] = &unk_1E82D1170;
    v27[4] = buf;
    v14 = [v13 synchronousRemoteObjectProxyWithErrorHandler:v27];
    v15 = [MEMORY[0x1E696AD98] numberWithDouble:a4];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __88__SESSessionManager_pauseRangingForReaderIdentifier_durationInSec_withAppletIdentifier___block_invoke_2;
    v26[3] = &unk_1E82D0DF0;
    v26[4] = &v28;
    v26[5] = buf;
    [v14 pauseRangingForReaderIdentifier:v7 durationInSec:v15 withAppletIdentifier:v8 reply:v26];

    v16 = *&buf[8];
    if ((v29[3] & 1) == 0 && !*(*&buf[8] + 40))
    {
      v17 = SESDefaultLogObject();
      v18 = *MEMORY[0x1E69E5148];
      v19 = SESCreateAndLogError();
      v20 = *(*&buf[8] + 40);
      *(*&buf[8] + 40) = v19;

      v16 = *&buf[8];
    }

    v21 = *(v16 + 40);
    if (v21)
    {
      v22 = SESDefaultLogObject();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = *(*&buf[8] + 40);
        *v32 = 138412290;
        v33 = v23;
        _os_log_impl(&dword_1C7B9A000, v22, OS_LOG_TYPE_ERROR, "%@", v32, 0xCu);
      }

      v21 = *(*&buf[8] + 40);
    }

    v12 = v21;
    _Block_object_dispose(&v28, 8);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v10 = SESDefaultLogObject();
    v11 = *MEMORY[0x1E69E5148];
    v12 = SESCreateAndLogError();
  }

  v24 = *MEMORY[0x1E69E9840];

  return v12;
}

+ (id)resumeRangingForReaderIdentifier:(id)a3 withAppletIdentifier:(id)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = SESDefaultLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v5;
    _os_log_impl(&dword_1C7B9A000, v7, OS_LOG_TYPE_INFO, "resumeRangingForReaderIdentifier %@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__7;
  v32 = __Block_byref_object_dispose__7;
  v33 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v8 = +[SESSessionManager sharedInstance];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __75__SESSessionManager_resumeRangingForReaderIdentifier_withAppletIdentifier___block_invoke;
  v22[3] = &unk_1E82D1170;
  v22[4] = &buf;
  v9 = [v8 synchronousRemoteObjectProxyWithErrorHandler:v22];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __75__SESSessionManager_resumeRangingForReaderIdentifier_withAppletIdentifier___block_invoke_2;
  v21[3] = &unk_1E82D0DF0;
  v21[4] = &v23;
  v21[5] = &buf;
  [v9 resumeRangingForReaderIdentifier:v5 withAppletIdentifier:v6 reply:v21];

  v10 = *(&buf + 1);
  if ((v24[3] & 1) == 0 && !*(*(&buf + 1) + 40))
  {
    v11 = SESDefaultLogObject();
    v12 = *MEMORY[0x1E69E5148];
    v13 = SESCreateAndLogError();
    v14 = *(*(&buf + 1) + 40);
    *(*(&buf + 1) + 40) = v13;

    v10 = *(&buf + 1);
  }

  v15 = *(v10 + 40);
  if (v15)
  {
    v16 = SESDefaultLogObject();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = *(*(&buf + 1) + 40);
      *v27 = 138412290;
      v28 = v17;
      _os_log_impl(&dword_1C7B9A000, v16, OS_LOG_TYPE_ERROR, "%@", v27, 0xCu);
    }

    v15 = *(*(&buf + 1) + 40);
  }

  v18 = v15;
  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&buf, 8);

  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

+ (id)getVehicleReports:(id *)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = SESDefaultLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1C7B9A000, v4, OS_LOG_TYPE_INFO, "getVehicleReports", buf, 2u);
  }

  *buf = 0;
  v26 = buf;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__7;
  v29 = __Block_byref_object_dispose__7;
  v30 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__7;
  v23 = __Block_byref_object_dispose__7;
  v24 = 0;
  v5 = +[SESSessionManager sharedInstance];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __39__SESSessionManager_getVehicleReports___block_invoke;
  v18[3] = &unk_1E82D1170;
  v18[4] = buf;
  v6 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v18];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __39__SESSessionManager_getVehicleReports___block_invoke_2;
  v17[3] = &unk_1E82D1198;
  v17[4] = &v19;
  v17[5] = buf;
  [v6 getVehicleReports:v17];

  v7 = v26;
  if (!v20[5] && !*(v26 + 5))
  {
    v8 = SESDefaultLogObject();
    v9 = *MEMORY[0x1E69E5148];
    v10 = SESCreateAndLogError();
    v11 = *(v26 + 5);
    *(v26 + 5) = v10;

    v7 = v26;
  }

  if (*(v7 + 5))
  {
    v12 = SESDefaultLogObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = *(v26 + 5);
      *v31 = 138412290;
      v32 = v13;
      _os_log_impl(&dword_1C7B9A000, v12, OS_LOG_TYPE_ERROR, "%@", v31, 0xCu);
    }
  }

  if (a3)
  {
    *a3 = *(v26 + 5);
  }

  v14 = v20[5];
  _Block_object_dispose(&v19, 8);

  _Block_object_dispose(buf, 8);
  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

void __39__SESSessionManager_getVehicleReports___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (id)startDCKAssertionForKeyIdentifier:(id)a3 withOptions:(id)a4 error:(id *)a5
{
  v33 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = SESDefaultLogObject();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    *&buf[4] = v8;
    *&buf[12] = 2112;
    *&buf[14] = v9;
    _os_log_impl(&dword_1C7B9A000, v10, OS_LOG_TYPE_INFO, "startDCKAssertionForKeyIdentifier %@ options %@", buf, 0x16u);
  }

  v11 = [[SESDCKAssertion alloc] initWithKeyIdentifier:v8];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v30 = __Block_byref_object_copy__7;
  v31 = __Block_byref_object_dispose__7;
  v32 = 0;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __73__SESSessionManager_startDCKAssertionForKeyIdentifier_withOptions_error___block_invoke;
  v28[3] = &unk_1E82D1170;
  v28[4] = buf;
  v12 = [(SESSessionManager *)self synchronousRemoteObjectProxyWithErrorHandler:v28];
  v13 = [(SESDCKAssertion *)v11 keyIdentifier];
  v14 = [(SESDCKAssertion *)v11 appletIdentifier];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __73__SESSessionManager_startDCKAssertionForKeyIdentifier_withOptions_error___block_invoke_585;
  v25[3] = &unk_1E82D1498;
  v27 = buf;
  v15 = v11;
  v26 = v15;
  [v12 startSESAssertion:v15 withKeyIdentifier:v13 withAppletIdentifier:v14 withOptions:v9 completion:v25];

  v16 = *&buf[8];
  if (v15 || *(*&buf[8] + 40))
  {
    if (!a5)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v21 = SESDefaultLogObject();
  v22 = *MEMORY[0x1E69E5148];
  v23 = SESCreateAndLogError();
  v24 = *(*&buf[8] + 40);
  *(*&buf[8] + 40) = v23;

  v16 = *&buf[8];
  if (a5)
  {
LABEL_6:
    *a5 = *(v16 + 40);
    v16 = *&buf[8];
  }

LABEL_7:
  if (*(v16 + 40))
  {
    v17 = 0;
  }

  else
  {
    v17 = v15;
  }

  v18 = v17;

  _Block_object_dispose(buf, 8);
  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

void __73__SESSessionManager_startDCKAssertionForKeyIdentifier_withOptions_error___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (v4)
  {
    v5 = SESDefaultLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 138412290;
      v8 = v4;
      _os_log_impl(&dword_1C7B9A000, v5, OS_LOG_TYPE_ERROR, "Failed to get proxy %@", &v7, 0xCu);
    }

    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __73__SESSessionManager_startDCKAssertionForKeyIdentifier_withOptions_error___block_invoke_585(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = SESDefaultLogObject();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v11 = 138412290;
      v12 = v6;
      _os_log_impl(&dword_1C7B9A000, v8, OS_LOG_TYPE_ERROR, "Proxy error %@", &v11, 0xCu);
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 32);
      v11 = 138412290;
      v12 = v9;
      _os_log_impl(&dword_1C7B9A000, v8, OS_LOG_TYPE_INFO, "Started new SESDCKAssertion %@", &v11, 0xCu);
    }

    [*(a1 + 32) setProxy:v5];
  }

  v10 = *MEMORY[0x1E69E9840];
}

+ (id)requestAssertionForKeyID:(id)a3 withAppletID:(id)a4 withOptions:(id)a5 error:(id *)a6
{
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = +[SESSessionManager sharedInstance];
  v17 = 0;
  v13 = [v12 startAssertionForKeyIdentifier:v11 withAppletIdentifier:v10 withOptions:v9 error:&v17];

  v14 = v17;
  if (a6)
  {
    v15 = v14;
    *a6 = v14;
  }

  return v13;
}

- (id)startAssertionForKeyIdentifier:(id)a3 withAppletIdentifier:(id)a4 withOptions:(id)a5 error:(id *)a6
{
  v36 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = SESDefaultLogObject();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 138412802;
    *&buf[4] = v10;
    *&buf[12] = 2112;
    *&buf[14] = v11;
    *&buf[22] = 2112;
    v33 = v12;
    _os_log_impl(&dword_1C7B9A000, v13, OS_LOG_TYPE_INFO, "startAssertionForKeyIdentifier %@ appletIdentifier %@ options %@", buf, 0x20u);
  }

  v14 = [[SESAssertion alloc] initWithKeyIdentifier:v10 appletIdentifier:v11];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v33 = __Block_byref_object_copy__7;
  v34 = __Block_byref_object_dispose__7;
  v35 = 0;
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __91__SESSessionManager_startAssertionForKeyIdentifier_withAppletIdentifier_withOptions_error___block_invoke;
  v31[3] = &unk_1E82D1170;
  v31[4] = buf;
  v15 = [(SESSessionManager *)self synchronousRemoteObjectProxyWithErrorHandler:v31];
  v16 = [(SESAssertion *)v14 keyIdentifier];
  v17 = [(SESAssertion *)v14 appletIdentifier];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __91__SESSessionManager_startAssertionForKeyIdentifier_withAppletIdentifier_withOptions_error___block_invoke_591;
  v28[3] = &unk_1E82D1498;
  v30 = buf;
  v18 = v14;
  v29 = v18;
  [v15 startSESAssertion:v18 withKeyIdentifier:v16 withAppletIdentifier:v17 withOptions:v12 completion:v28];

  v19 = *&buf[8];
  if (v18 || *(*&buf[8] + 40))
  {
    if (!a6)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v24 = SESDefaultLogObject();
  v25 = *MEMORY[0x1E69E5148];
  v26 = SESCreateAndLogError();
  v27 = *(*&buf[8] + 40);
  *(*&buf[8] + 40) = v26;

  v19 = *&buf[8];
  if (a6)
  {
LABEL_6:
    *a6 = *(v19 + 40);
    v19 = *&buf[8];
  }

LABEL_7:
  if (*(v19 + 40))
  {
    v20 = 0;
  }

  else
  {
    v20 = v18;
  }

  v21 = v20;

  _Block_object_dispose(buf, 8);
  v22 = *MEMORY[0x1E69E9840];

  return v21;
}

void __91__SESSessionManager_startAssertionForKeyIdentifier_withAppletIdentifier_withOptions_error___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (v4)
  {
    v5 = SESDefaultLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 138412290;
      v8 = v4;
      _os_log_impl(&dword_1C7B9A000, v5, OS_LOG_TYPE_ERROR, "Failed to get proxy %@", &v7, 0xCu);
    }

    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __91__SESSessionManager_startAssertionForKeyIdentifier_withAppletIdentifier_withOptions_error___block_invoke_591(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = SESDefaultLogObject();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v11 = 138412290;
      v12 = v6;
      _os_log_impl(&dword_1C7B9A000, v8, OS_LOG_TYPE_ERROR, "Proxy error %@", &v11, 0xCu);
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 32);
      v11 = 138412290;
      v12 = v9;
      _os_log_impl(&dword_1C7B9A000, v8, OS_LOG_TYPE_INFO, "Started new SESAssertion %@", &v11, 0xCu);
    }

    [*(a1 + 32) setProxy:v5];
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (id)remoteObjectProxyWithErrorHandler:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  [(SESSessionManager *)v5 connect];
  connection = v5->_connection;
  if (connection)
  {
    v7 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v4];
  }

  else
  {
    v8 = SESDefaultLogObject();
    v9 = *MEMORY[0x1E69E5148];
    v10 = SESCreateAndLogError();
    v4[2](v4, v10);

    v7 = 0;
  }

  objc_sync_exit(v5);

  return v7;
}

- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  [(SESSessionManager *)v5 connect];
  connection = v5->_connection;
  if (connection)
  {
    v7 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v4];
  }

  else
  {
    v8 = SESDefaultLogObject();
    v9 = *MEMORY[0x1E69E5148];
    v10 = SESCreateAndLogError();
    v4[2](v4, v10);

    v7 = 0;
  }

  objc_sync_exit(v5);

  return v7;
}

+ (void)setMachServiceName:(id)a3
{
  v3 = a3;
  v5 = +[SESSessionManager sharedInstance];
  v4 = v5[3];
  v5[3] = v3;
}

@end