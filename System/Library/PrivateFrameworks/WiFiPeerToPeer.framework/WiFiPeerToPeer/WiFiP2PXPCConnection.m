@interface WiFiP2PXPCConnection
+ (BOOL)directRequestOnEndpointType:(unint64_t)a3 error:(id *)a4 requesting:(id)a5;
+ (BOOL)supportsWiFiP2P;
+ (id)convertError:(int64_t)a3;
+ (id)directQueryOnEndpointType:(unint64_t)a3 exportedObject:(id)a4 withExportedInterface:(id)a5 error:(id *)a6 querying:(id)a7;
+ (id)endpointForEndpointType:(unint64_t)a3;
+ (id)frameworkBundle;
+ (id)localization;
+ (id)weakExportedObjectProxy:(id)a3;
+ (id)wifiPeerToPeerWorkloop;
+ (id)wifip2pExportedXPCInterfaceFor:(id)a3;
+ (id)wifip2pRemoteXPCInterface;
- (WiFiP2PXPCConnection)initWithEndpointType:(unint64_t)a3 queue:(id)a4 retryTimeout:(int64_t)a5;
- (WiFiP2PXPCConnectionDelegate)delegate;
- (void)attemptConnection;
- (void)cleanUpRemovingNotifyToken:(BOOL)a3;
- (void)dealloc;
- (void)handleConnectionInvalidated;
- (void)handleError:(int64_t)a3;
- (void)invalidate;
- (void)reconnectOnAvailableNotification;
- (void)start;
- (void)withRemoteObjectProxy:(id)a3;
- (void)withRemoteObjectProxy:(id)a3 clientCompletionHandler:(id)a4;
- (void)withRemoteObjectProxy:(id)a3 clientErrorHandler:(id)a4;
@end

@implementation WiFiP2PXPCConnection

+ (BOOL)supportsWiFiP2P
{
  if (qword_280B20B28 != -1)
  {
    dispatch_once(&qword_280B20B28, &__block_literal_global_3);
  }

  return _MergedGlobals_0;
}

+ (id)wifip2pRemoteXPCInterface
{
  if (qword_280B20B50 != -1)
  {
    dispatch_once(&qword_280B20B50, &__block_literal_global_117);
  }

  v3 = qword_280B20B58;

  return v3;
}

void __39__WiFiP2PXPCConnection_supportsWiFiP2P__block_invoke()
{
  v20 = *MEMORY[0x277D85DE8];
  v0 = SecTaskCreateFromSelf(0);
  if (v0)
  {
    v1 = v0;
    v2 = SecTaskCopyValueForEntitlement(v0, @"com.apple.wifip2pd", 0);
    if (v2)
    {
      v3 = v2;
      v4 = CFGetTypeID(v2);
      v5 = v4 == CFBooleanGetTypeID() && CFBooleanGetValue(v3) != 0;
      CFRelease(v3);
    }

    else
    {
      v5 = 0;
    }

    v6 = SecTaskCopyValueForEntitlement(v1, @"com.apple.developer.wifi-aware", 0);
    if (v6)
    {
      v7 = v6;
      v8 = CFGetTypeID(v6);
      if (v8 == CFArrayGetTypeID() && CFArrayGetCount(v7) >= 1)
      {
        v9 = 0;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v7, v9);
          if (CFStringCompare(ValueAtIndex, @"Publish", 0) == kCFCompareEqualTo || CFStringCompare(ValueAtIndex, @"Subscribe", 0) == kCFCompareEqualTo)
          {
            v5 = 1;
          }

          ++v9;
        }

        while (CFArrayGetCount(v7) > v9);
      }

      CFRelease(v7);
    }

    CFRelease(v1);
  }

  else
  {
    v5 = 0;
  }

  getpid();
  v11 = sandbox_check();
  if (v11 < 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v16 = *__error();
      buffer[0] = 67109120;
      buffer[1] = v16;
      _os_log_error_impl(&dword_22DFDF000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to check sandbox profile: %{errno}d", buffer, 8u);
    }

    v12 = 0;
  }

  else
  {
    v12 = v11 == 0;
  }

  v13 = getpid();
  v14 = buffer;
  if (proc_name(v13, buffer, 0x20u) <= 0)
  {
    v14 = "unknown";
  }

  if (!v5 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    *buf = 136446210;
    v18 = v14;
    _os_log_fault_impl(&dword_22DFDF000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "Process %{public}s is missing entitlement required for peer to peer Wi-Fi access: <key>com.apple.wifip2pd</key><true/> OR <key>com.apple.developer.wifi-aware</key><true/>", buf, 0xCu);
    if (v12)
    {
      goto LABEL_31;
    }
  }

  else if (v12)
  {
    goto LABEL_31;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    *buf = 136446210;
    v18 = v14;
    _os_log_fault_impl(&dword_22DFDF000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "Process %{public}s is missing sandbox rule for peer to peer Wi-Fi access: (allow mach-lookup (global-name com.apple.wifip2pd))", buf, 0xCu);
  }

LABEL_31:
  _MergedGlobals_0 = v5 && v12;
  v15 = *MEMORY[0x277D85DE8];
}

+ (id)endpointForEndpointType:(unint64_t)a3
{
  v22 = *MEMORY[0x277D85DE8];
  if (+[WiFiP2PXPCConnection supportsWiFiP2P])
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = __Block_byref_object_copy__1;
    v19 = __Block_byref_object_dispose__1;
    v20 = 0;
    v4 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.wifip2pd" options:4096];
    v5 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2841B4128];
    [v4 setRemoteObjectInterface:v5];

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __48__WiFiP2PXPCConnection_endpointForEndpointType___block_invoke;
    v14[3] = &unk_2787AB0E0;
    v14[4] = &v15;
    v6 = [v4 synchronousRemoteObjectProxyWithErrorHandler:v14];
    [v4 activate];
    v7 = getpid();
    v8 = proc_name(v7, buffer, 0x20u);
    if (v8 < 1)
    {
      v9 = &stru_2841A3278;
    }

    else
    {
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:buffer];
    }

    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __48__WiFiP2PXPCConnection_endpointForEndpointType___block_invoke_2;
    v13[3] = &unk_2787AB108;
    v13[4] = &v15;
    [v6 endpointForType:a3 processName:v9 completionHandler:v13];
    if (v8 >= 1)
    {
    }

    [v4 invalidate];

    v10 = v16[5];
    _Block_object_dispose(&v15, 8);
  }

  else
  {
    v10 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

void __48__WiFiP2PXPCConnection_endpointForEndpointType___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

+ (id)directQueryOnEndpointType:(unint64_t)a3 exportedObject:(id)a4 withExportedInterface:(id)a5 error:(id *)a6 querying:(id)a7
{
  v11 = a4;
  v12 = a5;
  v13 = a7;
  v14 = [WiFiP2PXPCConnection endpointForEndpointType:a3];
  if (v14)
  {
    v15 = [objc_alloc(MEMORY[0x277CCAE80]) initWithListenerEndpoint:v14];
    if (v12)
    {
      v16 = [MEMORY[0x277CCAE90] interfaceWithProtocol:v12];
      [v15 setExportedInterface:v16];
    }

    [v15 setExportedObject:v11];
    v17 = +[WiFiP2PXPCConnection wifip2pRemoteXPCInterface];
    [v15 setRemoteObjectInterface:v17];

    [v15 activate];
    v30 = 0;
    v31 = &v30;
    v32 = 0x3032000000;
    v33 = __Block_byref_object_copy__1;
    v34 = __Block_byref_object_dispose__1;
    v35 = 0;
    v24 = 0;
    v25 = &v24;
    v26 = 0x3032000000;
    v27 = __Block_byref_object_copy__1;
    v28 = __Block_byref_object_dispose__1;
    v29 = 0;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __102__WiFiP2PXPCConnection_directQueryOnEndpointType_exportedObject_withExportedInterface_error_querying___block_invoke;
    v23[3] = &unk_2787AB130;
    v23[4] = &v24;
    v23[5] = &v30;
    v18 = [v15 synchronousRemoteObjectProxyWithErrorHandler:v23];
    v19 = v18;
    if (v15 && v18)
    {
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __102__WiFiP2PXPCConnection_directQueryOnEndpointType_exportedObject_withExportedInterface_error_querying___block_invoke_2;
      v22[3] = &unk_2787AB158;
      v22[4] = &v30;
      v13[2](v13, v18, v22);
      if (a6)
      {
        *a6 = v25[5];
      }

      [v15 invalidate];
    }

    else
    {
      [v15 invalidate];
      if (a6 && !*a6)
      {
        *a6 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:102 userInfo:0];
      }
    }

    v20 = v31[5];

    _Block_object_dispose(&v24, 8);
    _Block_object_dispose(&v30, 8);
  }

  else if (a6)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:57 userInfo:0];
    *a6 = v20 = 0;
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

void __102__WiFiP2PXPCConnection_directQueryOnEndpointType_exportedObject_withExportedInterface_error_querying___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v6 = a2;
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;
}

+ (BOOL)directRequestOnEndpointType:(unint64_t)a3 error:(id *)a4 requesting:(id)a5
{
  v7 = a5;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __69__WiFiP2PXPCConnection_directRequestOnEndpointType_error_requesting___block_invoke;
  v13[3] = &unk_2787AB180;
  v8 = v7;
  v14 = v8;
  v9 = [WiFiP2PXPCConnection directQueryOnEndpointType:a3 error:a4 querying:v13];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 integerValue];
    if (!a4)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v11 = 7;
    if (!a4)
    {
      goto LABEL_7;
    }
  }

  if (!*a4)
  {
    *a4 = [WiFiP2PXPCConnection convertError:v11];
  }

LABEL_7:

  return v11 == 0;
}

void __69__WiFiP2PXPCConnection_directRequestOnEndpointType_error_requesting___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __69__WiFiP2PXPCConnection_directRequestOnEndpointType_error_requesting___block_invoke_2;
  v9[3] = &unk_2787AAC58;
  v10 = v5;
  v7 = *(v6 + 16);
  v8 = v5;
  v7(v6, a2, v9);
}

void __69__WiFiP2PXPCConnection_directRequestOnEndpointType_error_requesting___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:a2];
  (*(v2 + 16))(v2, v3);
}

- (WiFiP2PXPCConnection)initWithEndpointType:(unint64_t)a3 queue:(id)a4 retryTimeout:(int64_t)a5
{
  v9 = a4;
  v18.receiver = self;
  v18.super_class = WiFiP2PXPCConnection;
  v10 = [(WiFiP2PXPCConnection *)&v18 init];
  v11 = v10;
  if (v10)
  {
    v10->_endpointType = a3;
    v10->_retryTimeout = a5;
    objc_storeStrong(&v10->_queue, a4);
    connection = v11->_connection;
    v11->_connection = 0;

    remoteObject = v11->_remoteObject;
    v11->_remoteObject = 0;

    retryTimer = v11->_retryTimer;
    v11->_retryTimer = 0;

    v11->_notifyToken = -1;
    v15 = [MEMORY[0x277CBEB18] array];
    queuedRequests = v11->_queuedRequests;
    v11->_queuedRequests = v15;
  }

  return v11;
}

- (void)dealloc
{
  [(WiFiP2PXPCConnection *)self stop];
  v3.receiver = self;
  v3.super_class = WiFiP2PXPCConnection;
  [(WiFiP2PXPCConnection *)&v3 dealloc];
}

- (void)attemptConnection
{
  dispatch_assert_queue_V2(self->_queue);
  if (!self->_connection)
  {
    v3 = [(WiFiP2PXPCConnection *)self delegate];
    if (v3)
    {
      if (self->_retryTimeout < 0 || (objc_opt_respondsToSelector() & 1) == 0)
      {
        [(WiFiP2PXPCConnection *)self reconnectOnAvailableNotification];
      }

      v4 = [WiFiP2PXPCConnection endpointForEndpointType:self->_endpointType];
      if (v4)
      {
        remoteObject = self->_remoteObject;
        self->_remoteObject = 0;

        v6 = [objc_alloc(MEMORY[0x277CCAE80]) initWithListenerEndpoint:v4];
        connection = self->_connection;
        self->_connection = v6;

        [(NSXPCConnection *)self->_connection _setQueue:self->_queue];
        v8 = self->_connection;
        v9 = +[WiFiP2PXPCConnection wifip2pRemoteXPCInterface];
        [(NSXPCConnection *)v8 setRemoteObjectInterface:v9];

        if (objc_opt_respondsToSelector())
        {
          v10 = self->_connection;
          v11 = [v3 exportedInterface];
          [(NSXPCConnection *)v10 setExportedInterface:v11];
        }

        if (objc_opt_respondsToSelector())
        {
          v12 = self->_connection;
          v13 = [v3 exportedObject];
          v14 = [WiFiP2PXPCConnection weakExportedObjectProxy:v13];
          [(NSXPCConnection *)v12 setExportedObject:v14];
        }

        objc_initWeak(&location, self);
        v15 = self->_connection;
        v25[0] = MEMORY[0x277D85DD0];
        v25[1] = 3221225472;
        v25[2] = __41__WiFiP2PXPCConnection_attemptConnection__block_invoke;
        v25[3] = &unk_2787AB1A8;
        objc_copyWeak(&v26, &location);
        [(NSXPCConnection *)v15 setInvalidationHandler:v25];
        v16 = self->_connection;
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __41__WiFiP2PXPCConnection_attemptConnection__block_invoke_2;
        v23[3] = &unk_2787AB1A8;
        objc_copyWeak(&v24, &location);
        [(NSXPCConnection *)v16 setInterruptionHandler:v23];
        v17 = self->_connection;
        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v21[2] = __41__WiFiP2PXPCConnection_attemptConnection__block_invoke_3;
        v21[3] = &unk_2787AB1D0;
        objc_copyWeak(&v22, &location);
        v18 = [(NSXPCConnection *)v17 remoteObjectProxyWithErrorHandler:v21];
        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 3221225472;
        v19[2] = __41__WiFiP2PXPCConnection_attemptConnection__block_invoke_4;
        v19[3] = &unk_2787AB1F8;
        objc_copyWeak(&v20, &location);
        [v3 startConnectionUsingProxy:v18 completionHandler:v19];

        [(NSXPCConnection *)self->_connection activate];
        objc_destroyWeak(&v20);
        objc_destroyWeak(&v22);
        objc_destroyWeak(&v24);
        objc_destroyWeak(&v26);
        objc_destroyWeak(&location);
      }

      else
      {
        [(WiFiP2PXPCConnection *)self handleError:1];
      }
    }
  }
}

void __41__WiFiP2PXPCConnection_attemptConnection__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleConnectionInvalidated];
}

void __41__WiFiP2PXPCConnection_attemptConnection__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained[4] setInvalidationHandler:0];
    [v2[4] invalidate];
    [v2 handleConnectionInvalidated];
    WeakRetained = v2;
  }
}

void __41__WiFiP2PXPCConnection_attemptConnection__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleError:1];
}

void __41__WiFiP2PXPCConnection_attemptConnection__block_invoke_4(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleError:a2];
}

- (void)withRemoteObjectProxy:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__WiFiP2PXPCConnection_withRemoteObjectProxy___block_invoke;
  v7[3] = &unk_2787AB248;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __46__WiFiP2PXPCConnection_withRemoteObjectProxy___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[5])
  {
    v3 = *(*(a1 + 40) + 16);

    v3();
  }

  else
  {
    [v2 attemptConnection];
    v4 = *(*(a1 + 32) + 64);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __46__WiFiP2PXPCConnection_withRemoteObjectProxy___block_invoke_2;
    v6[3] = &unk_2787AB220;
    v7 = *(a1 + 40);
    v5 = MEMORY[0x2318E0CF0](v6);
    [v4 addObject:v5];
  }
}

void __46__WiFiP2PXPCConnection_withRemoteObjectProxy___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (!a2 && v5[5])
  {
    v6 = v5;
    (*(*(a1 + 32) + 16))();
    v5 = v6;
  }
}

- (void)withRemoteObjectProxy:(id)a3 clientCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__WiFiP2PXPCConnection_withRemoteObjectProxy_clientCompletionHandler___block_invoke;
  block[3] = &unk_2787AB2C0;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

void __70__WiFiP2PXPCConnection_withRemoteObjectProxy_clientCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[5])
  {
    v3 = v2[4];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __70__WiFiP2PXPCConnection_withRemoteObjectProxy_clientCompletionHandler___block_invoke_2;
    v17[3] = &unk_2787AB270;
    v4 = &v18;
    v5 = *(a1 + 40);
    v18 = *(a1 + 48);
    v6 = [v3 remoteObjectProxyWithErrorHandler:v17];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __70__WiFiP2PXPCConnection_withRemoteObjectProxy_clientCompletionHandler___block_invoke_3;
    v15[3] = &unk_2787AAC58;
    v7 = &v16;
    v16 = *(a1 + 48);
    (*(v5 + 16))(v5, v6, v15);
  }

  else
  {
    [v2 attemptConnection];
    v8 = *(*(a1 + 32) + 64);
    v9 = MEMORY[0x277D85DD0];
    v10 = 3221225472;
    v11 = __70__WiFiP2PXPCConnection_withRemoteObjectProxy_clientCompletionHandler___block_invoke_4;
    v12 = &unk_2787AB298;
    v4 = &v13;
    v13 = *(a1 + 40);
    v7 = &v14;
    v14 = *(a1 + 48);
    v6 = MEMORY[0x2318E0CF0](&v9);
    [v8 addObject:{v6, v9, v10, v11, v12}];
  }
}

uint64_t __70__WiFiP2PXPCConnection_withRemoteObjectProxy_clientCompletionHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

uint64_t __70__WiFiP2PXPCConnection_withRemoteObjectProxy_clientCompletionHandler___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __70__WiFiP2PXPCConnection_withRemoteObjectProxy_clientCompletionHandler___block_invoke_4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2 || (v8 = *(v5 + 4)) == 0)
  {
    v7 = *(a1 + 40);
    if (v7)
    {
      (*(v7 + 16))(v7, a2);
    }
  }

  else
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __70__WiFiP2PXPCConnection_withRemoteObjectProxy_clientCompletionHandler___block_invoke_5;
    v13[3] = &unk_2787AB270;
    v9 = *(a1 + 32);
    v14 = *(a1 + 40);
    v10 = [v8 remoteObjectProxyWithErrorHandler:v13];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __70__WiFiP2PXPCConnection_withRemoteObjectProxy_clientCompletionHandler___block_invoke_6;
    v11[3] = &unk_2787AAC58;
    v12 = *(a1 + 40);
    (*(v9 + 16))(v9, v10, v11);
  }
}

uint64_t __70__WiFiP2PXPCConnection_withRemoteObjectProxy_clientCompletionHandler___block_invoke_5(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

uint64_t __70__WiFiP2PXPCConnection_withRemoteObjectProxy_clientCompletionHandler___block_invoke_6(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)withRemoteObjectProxy:(id)a3 clientErrorHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__WiFiP2PXPCConnection_withRemoteObjectProxy_clientErrorHandler___block_invoke;
  block[3] = &unk_2787AB2C0;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

void __65__WiFiP2PXPCConnection_withRemoteObjectProxy_clientErrorHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[5])
  {
    v3 = v2[4];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __65__WiFiP2PXPCConnection_withRemoteObjectProxy_clientErrorHandler___block_invoke_2;
    v17[3] = &unk_2787AB270;
    v4 = &v18;
    v5 = *(a1 + 40);
    v18 = *(a1 + 48);
    v6 = [v3 remoteObjectProxyWithErrorHandler:v17];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __65__WiFiP2PXPCConnection_withRemoteObjectProxy_clientErrorHandler___block_invoke_3;
    v15[3] = &unk_2787AB270;
    v7 = &v16;
    v16 = *(a1 + 48);
    (*(v5 + 16))(v5, v6, v15);
  }

  else
  {
    [v2 attemptConnection];
    v8 = *(*(a1 + 32) + 64);
    v9 = MEMORY[0x277D85DD0];
    v10 = 3221225472;
    v11 = __65__WiFiP2PXPCConnection_withRemoteObjectProxy_clientErrorHandler___block_invoke_4;
    v12 = &unk_2787AB298;
    v4 = &v13;
    v13 = *(a1 + 40);
    v7 = &v14;
    v14 = *(a1 + 48);
    v6 = MEMORY[0x2318E0CF0](&v9);
    [v8 addObject:{v6, v9, v10, v11, v12}];
  }
}

uint64_t __65__WiFiP2PXPCConnection_withRemoteObjectProxy_clientErrorHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __65__WiFiP2PXPCConnection_withRemoteObjectProxy_clientErrorHandler___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __65__WiFiP2PXPCConnection_withRemoteObjectProxy_clientErrorHandler___block_invoke_4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2 || (v9 = *(v5 + 4)) == 0)
  {
    v7 = *(a1 + 40);
    if (v7)
    {
      v8 = [WiFiP2PXPCConnection convertError:a2];
      (*(v7 + 16))(v7, v8);
    }
  }

  else
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __65__WiFiP2PXPCConnection_withRemoteObjectProxy_clientErrorHandler___block_invoke_5;
    v14[3] = &unk_2787AB270;
    v10 = *(a1 + 32);
    v15 = *(a1 + 40);
    v11 = [v9 remoteObjectProxyWithErrorHandler:v14];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __65__WiFiP2PXPCConnection_withRemoteObjectProxy_clientErrorHandler___block_invoke_6;
    v12[3] = &unk_2787AB270;
    v13 = *(a1 + 40);
    (*(v10 + 16))(v10, v11, v12);
  }
}

uint64_t __65__WiFiP2PXPCConnection_withRemoteObjectProxy_clientErrorHandler___block_invoke_5(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __65__WiFiP2PXPCConnection_withRemoteObjectProxy_clientErrorHandler___block_invoke_6(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)start
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__WiFiP2PXPCConnection_start__block_invoke;
  block[3] = &unk_2787AB2E8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)invalidate
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__WiFiP2PXPCConnection_invalidate__block_invoke;
  block[3] = &unk_2787AB2E8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)cleanUpRemovingNotifyToken:(BOOL)a3
{
  v3 = a3;
  v24 = *MEMORY[0x277D85DE8];
  v5 = self->_queuedRequests;
  v6 = [MEMORY[0x277CBEB18] array];
  queuedRequests = self->_queuedRequests;
  self->_queuedRequests = v6;

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = v5;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      v12 = 0;
      do
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        (*(*(*(&v19 + 1) + 8 * v12) + 16))(*(*(&v19 + 1) + 8 * v12));
        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  [(NSXPCConnection *)self->_connection setInvalidationHandler:0, v19];
  [(NSXPCConnection *)self->_connection invalidate];
  connection = self->_connection;
  self->_connection = 0;

  remoteObject = self->_remoteObject;
  self->_remoteObject = 0;

  notifyToken = self->_notifyToken;
  if ((notifyToken & 0x80000000) == 0 && v3)
  {
    notify_cancel(notifyToken);
    self->_notifyToken = -1;
  }

  retryTimer = self->_retryTimer;
  if (retryTimer)
  {
    dispatch_source_cancel(retryTimer);
    v17 = self->_retryTimer;
    self->_retryTimer = 0;
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)handleError:(int64_t)a3
{
  v35 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  v5 = [(WiFiP2PXPCConnection *)self delegate];
  v6 = self->_queuedRequests;
  v7 = [MEMORY[0x277CBEB18] array];
  queuedRequests = self->_queuedRequests;
  self->_queuedRequests = v7;

  if (a3)
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v9 = v6;
    v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v25 objects:v33 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v26;
      do
      {
        v13 = 0;
        do
        {
          if (*v26 != v12)
          {
            objc_enumerationMutation(v9);
          }

          (*(*(*(&v25 + 1) + 8 * v13) + 16))(*(*(&v25 + 1) + 8 * v13));
          ++v13;
        }

        while (v11 != v13);
        v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v25 objects:v33 count:16];
      }

      while (v11);
    }

    v14 = objc_opt_respondsToSelector();
    if (v14)
    {
      [v5 handleError:{a3, v25}];
    }

    [(WiFiP2PXPCConnection *)self cleanUpRemovingNotifyToken:v14 & 1, v25];
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      connection = self->_connection;
      v16 = [v5 remoteObjectInterface];
      [(NSXPCConnection *)connection setRemoteObjectInterface:v16];
    }

    v17 = [(NSXPCConnection *)self->_connection remoteObjectProxy];
    remoteObject = self->_remoteObject;
    self->_remoteObject = v17;

    if (objc_opt_respondsToSelector())
    {
      [v5 handleConnectionEstablishedWithProxy:self->_remoteObject];
    }

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v19 = v6;
    v20 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v30;
      do
      {
        v23 = 0;
        do
        {
          if (*v30 != v22)
          {
            objc_enumerationMutation(v19);
          }

          (*(*(*(&v29 + 1) + 8 * v23++) + 16))();
        }

        while (v21 != v23);
        v21 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v21);
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)handleConnectionInvalidated
{
  dispatch_assert_queue_V2(self->_queue);
  connection = self->_connection;
  self->_connection = 0;

  remoteObject = self->_remoteObject;
  self->_remoteObject = 0;

  objc_initWeak(&location, self);
  retryTimeout = self->_retryTimeout;
  if (retryTimeout)
  {
    if (retryTimeout >= 1)
    {
      retryTimer = self->_retryTimer;
      if (retryTimer)
      {
        dispatch_source_cancel(retryTimer);
        v7 = self->_retryTimer;
        self->_retryTimer = 0;
      }

      v8 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_queue);
      v9 = self->_retryTimer;
      self->_retryTimer = v8;

      v10 = self->_retryTimer;
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __51__WiFiP2PXPCConnection_handleConnectionInvalidated__block_invoke;
      v13[3] = &unk_2787AB1A8;
      objc_copyWeak(&v14, &location);
      dispatch_source_set_event_handler(v10, v13);
      v11 = self->_retryTimer;
      v12 = dispatch_time(0, self->_retryTimeout);
      dispatch_source_set_timer(v11, v12, 0xFFFFFFFFFFFFFFFFLL, 0xF4240uLL);
      dispatch_activate(self->_retryTimer);
      objc_destroyWeak(&v14);
    }
  }

  else
  {
    [(WiFiP2PXPCConnection *)self attemptConnection];
  }

  objc_destroyWeak(&location);
}

void __51__WiFiP2PXPCConnection_handleConnectionInvalidated__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained[7];
    WeakRetained[7] = 0;
    v3 = WeakRetained;

    [v3 attemptConnection];
    WeakRetained = v3;
  }
}

- (void)reconnectOnAvailableNotification
{
  p_notifyToken = &self->_notifyToken;
  if (self->_notifyToken < 0)
  {
    objc_initWeak(&location, self);
    v4 = +[WiFiP2PXPCConnection wifiPeerToPeerAvailableNotification];
    queue = self->_queue;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __56__WiFiP2PXPCConnection_reconnectOnAvailableNotification__block_invoke;
    v6[3] = &unk_2787AB310;
    objc_copyWeak(&v7, &location);
    notify_register_dispatch(v4, p_notifyToken, queue, v6);
    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

void __56__WiFiP2PXPCConnection_reconnectOnAvailableNotification__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained attemptConnection];
}

+ (id)wifiPeerToPeerWorkloop
{
  if (qword_280B20B30 != -1)
  {
    dispatch_once(&qword_280B20B30, &__block_literal_global_105);
  }

  v3 = qword_280B20B38;

  return v3;
}

uint64_t __46__WiFiP2PXPCConnection_wifiPeerToPeerWorkloop__block_invoke()
{
  qword_280B20B38 = dispatch_workloop_create("com.apple.framework.WiFiPeerToPeer");

  return MEMORY[0x2821F96F8]();
}

+ (id)convertError:(int64_t)a3
{
  v5 = 16;
  if (a3 > 3)
  {
    v8 = 35;
    v9 = 45;
    if (a3 != 10)
    {
      v9 = 16;
    }

    if (a3 != 7)
    {
      v8 = v9;
    }

    if (a3 == 6)
    {
      v5 = 1;
    }

    if (a3 == 4)
    {
      v5 = 12;
    }

    if (a3 <= 6)
    {
      v10 = v5;
    }

    else
    {
      v10 = v8;
    }

    goto LABEL_22;
  }

  if (a3 > 1)
  {
    v7 = 22;
    if (a3 == 3)
    {
      v5 = 2;
    }

    v6 = a3 == 2;
    goto LABEL_19;
  }

  if (a3)
  {
    v6 = a3 == 1;
    v7 = 57;
LABEL_19:
    if (v6)
    {
      v10 = v7;
    }

    else
    {
      v10 = v5;
    }

LABEL_22:
    v11 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:v10 userInfo:{0, v3}];

    return v11;
  }

  v11 = 0;

  return v11;
}

+ (id)frameworkBundle
{
  if (qword_280B20B48 != -1)
  {
    dispatch_once(&qword_280B20B48, &__block_literal_global_108);
  }

  v3 = qword_280B20B40;

  return v3;
}

void __39__WiFiP2PXPCConnection_frameworkBundle__block_invoke()
{
  v0 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v1 = qword_280B20B40;
  qword_280B20B40 = v0;

  if (!qword_280B20B40)
  {
    qword_280B20B40 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/PrivateFrameworks/WiFiPeerToPeer.framework"];

    MEMORY[0x2821F96F8]();
  }
}

+ (id)localization
{
  v18[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCA8D8];
  v3 = +[WiFiP2PXPCConnection frameworkBundle];
  v4 = [v3 localizations];
  v5 = [MEMORY[0x277CBEAF8] preferredLanguages];
  v6 = [v2 preferredLocalizationsFromArray:v4 forPreferences:v5];
  v7 = [v6 firstObject];

  if (!v7)
  {
    v8 = MEMORY[0x277CCA8D8];
    v9 = +[WiFiP2PXPCConnection frameworkBundle];
    v10 = [v9 localizations];
    v11 = [MEMORY[0x277CBEAF8] currentLocale];
    v12 = [v11 localeIdentifier];
    v18[0] = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
    v14 = [v8 preferredLocalizationsFromArray:v10 forPreferences:v13];
    v7 = [v14 firstObject];

    if (!v7)
    {
      v15 = [MEMORY[0x277CBEAF8] currentLocale];
      v7 = [v15 localeIdentifier];
    }
  }

  v16 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)weakExportedObjectProxy:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(WiFiP2PXPCExportedObjectProxy);
  [(WiFiP2PXPCExportedObjectProxy *)v4 setExportedObject:v3];

  return v4;
}

void __49__WiFiP2PXPCConnection_wifip2pRemoteXPCInterface__block_invoke()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2841B4188];
  v1 = qword_280B20B58;
  qword_280B20B58 = v0;

  v2 = qword_280B20B58;
  v3 = MEMORY[0x277CBEB98];
  v4 = objc_opt_class();
  v5 = [v3 setWithObjects:{v4, objc_opt_class(), 0}];
  [v2 setClasses:v5 forSelector:sel_updateAWDLLTERestrictedChannels_completionHandler_ argumentIndex:0 ofReply:0];
}

+ (id)wifip2pExportedXPCInterfaceFor:(id)a3
{
  v3 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__WiFiP2PXPCConnection_wifip2pExportedXPCInterfaceFor___block_invoke;
  block[3] = &unk_2787AB2E8;
  v10 = v3;
  v4 = qword_280B20B60;
  v5 = v3;
  if (v4 != -1)
  {
    dispatch_once(&qword_280B20B60, block);
  }

  v6 = qword_280B20B68;
  v7 = qword_280B20B68;

  return v6;
}

uint64_t __55__WiFiP2PXPCConnection_wifip2pExportedXPCInterfaceFor___block_invoke(uint64_t a1)
{
  qword_280B20B68 = [MEMORY[0x277CCAE90] interfaceWithProtocol:*(a1 + 32)];

  return MEMORY[0x2821F96F8]();
}

- (WiFiP2PXPCConnectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end