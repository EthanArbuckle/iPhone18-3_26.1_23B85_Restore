@interface AWDLServiceDiscoveryManager
- (AWDLServiceDiscoveryManager)init;
- (BOOL)_usingAWDLDiscoveryManagerProxy:(id)proxy onSuccess:(id)success error:(id *)error;
- (BOOL)clearTrafficRegistration:(id)registration error:(id *)error;
- (BOOL)getActiveTrafficRegistrationWithCompletionHandler:(id)handler;
- (BOOL)performRealtimeConnectivityCheckWithConfiguration:(id)configuration error:(id *)error;
- (BOOL)resumeAWDLWithError:(id *)error;
- (BOOL)setTrafficRegistration:(id)registration onInvalidationHandler:(id)handler error:(id *)error;
- (BOOL)suspendAWDLWithError:(id *)error;
- (void)_destroyConnection;
- (void)_removeFirstTrafficRegistrationMatching:(id)matching;
- (void)_retryConnection;
- (void)connectionInvalidated;
- (void)dealloc;
- (void)invalidatedActiveTrafficRegistration:(id)registration;
@end

@implementation AWDLServiceDiscoveryManager

- (AWDLServiceDiscoveryManager)init
{
  v8.receiver = self;
  v8.super_class = AWDLServiceDiscoveryManager;
  v2 = [(AWDLServiceDiscoveryManager *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    lock = v2->_lock;
    v2->_lock = v3;

    array = [MEMORY[0x277CBEB18] array];
    activeTrafficRegistrations = v2->_activeTrafficRegistrations;
    v2->_activeTrafficRegistrations = array;

    v2->_suspendCount = 0;
    v2->_notifyToken = -1;
  }

  return v2;
}

- (void)dealloc
{
  [(NSLock *)self->_lock lock];
  [(AWDLServiceDiscoveryManager *)self _destroyConnection];
  notifyToken = self->_notifyToken;
  if (notifyToken != -1)
  {
    notify_cancel(notifyToken);
  }

  self->_notifyToken = -1;
  [(NSLock *)self->_lock unlock];
  v4.receiver = self;
  v4.super_class = AWDLServiceDiscoveryManager;
  [(AWDLServiceDiscoveryManager *)&v4 dealloc];
}

- (void)_destroyConnection
{
  [(NSXPCConnection *)self->_xpcConnection setInvalidationHandler:0];
  [(NSXPCConnection *)self->_xpcConnection invalidate];
  xpcConnection = self->_xpcConnection;
  self->_xpcConnection = 0;
}

- (void)_retryConnection
{
  if ([(AWDLServiceDiscoveryManager *)self _requiresConnection])
  {
    if (!self->_xpcConnection)
    {
      self->_attemptedReconnect = 0;
      v3[0] = MEMORY[0x277D85DD0];
      v3[1] = 3221225472;
      v3[2] = __47__AWDLServiceDiscoveryManager__retryConnection__block_invoke;
      v3[3] = &unk_2787AB650;
      v3[4] = self;
      [(AWDLServiceDiscoveryManager *)self _usingAWDLDiscoveryManagerProxy:v3 onSuccess:0 error:0];
    }
  }
}

void __47__AWDLServiceDiscoveryManager__retryConnection__block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = *(*(a1 + 32) + 32);
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [v3 trafficRegistration:*(*(&v10 + 1) + 8 * v8++) enabled:1 completionHandler:{&__block_literal_global_88, v10}];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  if (*(*(a1 + 32) + 40) >= 1)
  {
    [v3 setAWDLSuspendedState:1 completionHandler:&__block_literal_global_90];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)connectionInvalidated
{
  [(NSLock *)self->_lock lock];
  [(AWDLServiceDiscoveryManager *)self _destroyConnection];
  if ([(NSMutableArray *)self->_activeTrafficRegistrations count]&& !self->_attemptedReconnect)
  {
    [(AWDLServiceDiscoveryManager *)self _retryConnection];
    self->_attemptedReconnect = 1;
  }

  lock = self->_lock;

  [(NSLock *)lock unlock];
}

- (BOOL)_usingAWDLDiscoveryManagerProxy:(id)proxy onSuccess:(id)success error:(id *)error
{
  proxyCopy = proxy;
  successCopy = success;
  v56 = 0;
  v57 = &v56;
  v58 = 0x2020000000;
  v59 = 0;
  objc_initWeak(&location, self);
  p_notifyToken = &self->_notifyToken;
  if (self->_notifyToken == -1)
  {
    v11 = +[WiFiP2PXPCConnection wifiPeerToPeerAvailableNotification];
    v12 = +[WiFiP2PXPCConnection wifiPeerToPeerWorkloop];
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __79__AWDLServiceDiscoveryManager__usingAWDLDiscoveryManagerProxy_onSuccess_error___block_invoke;
    handler[3] = &unk_2787AB310;
    objc_copyWeak(&v54, &location);
    notify_register_dispatch(v11, &self->_notifyToken, v12, handler);

    objc_destroyWeak(&v54);
  }

  v47 = 0;
  v48 = &v47;
  v49 = 0x3032000000;
  v50 = __Block_byref_object_copy__2;
  v51 = __Block_byref_object_dispose__2;
  v52 = 0;
  p_xpcConnection = &self->_xpcConnection;
  xpcConnection = self->_xpcConnection;
  if (xpcConnection)
  {
    goto LABEL_7;
  }

  v15 = [WiFiP2PXPCConnection endpointForEndpointType:0];
  if (v15)
  {
    v32 = successCopy;
    v41 = 0;
    v42 = &v41;
    v43 = 0x3032000000;
    v44 = __Block_byref_object_copy__2;
    v45 = __Block_byref_object_dispose__2;
    v46 = [objc_alloc(MEMORY[0x277CCAE80]) initWithListenerEndpoint:v15];
    v16 = v42[5];
    v17 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2841B4188];
    [v16 setRemoteObjectInterface:v17];

    v18 = v42[5];
    v19 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2841B1A48];
    [v18 setExportedInterface:v19];

    v20 = v42[5];
    v21 = [WiFiP2PXPCConnection weakExportedObjectProxy:self];
    [v20 setExportedObject:v21];

    [v42[5] activate];
    v22 = v42[5];
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __79__AWDLServiceDiscoveryManager__usingAWDLDiscoveryManagerProxy_onSuccess_error___block_invoke_137;
    v40[3] = &unk_2787AB130;
    v40[4] = &v47;
    v40[5] = &v41;
    v23 = [v22 synchronousRemoteObjectProxyWithErrorHandler:v40];
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __79__AWDLServiceDiscoveryManager__usingAWDLDiscoveryManagerProxy_onSuccess_error___block_invoke_2;
    v39[3] = &unk_2787AB678;
    v39[4] = &v47;
    v39[5] = &v41;
    [v23 createXPCResponderWithType:1 completionHandler:v39];

    v24 = v42[5];
    v25 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2841B4308];
    [v24 setRemoteObjectInterface:v25];

    v26 = v42[5];
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __79__AWDLServiceDiscoveryManager__usingAWDLDiscoveryManagerProxy_onSuccess_error___block_invoke_3;
    v37[3] = &unk_2787AB1A8;
    objc_copyWeak(&v38, &location);
    [v26 setInvalidationHandler:v37];
    v27 = v42[5];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __79__AWDLServiceDiscoveryManager__usingAWDLDiscoveryManagerProxy_onSuccess_error___block_invoke_5;
    v35[3] = &unk_2787AB1A8;
    objc_copyWeak(&v36, &location);
    [v27 setInterruptionHandler:v35];
    objc_storeStrong(&self->_xpcConnection, v42[5]);
    objc_destroyWeak(&v36);
    objc_destroyWeak(&v38);
    _Block_object_dispose(&v41, 8);

    successCopy = v32;
  }

  xpcConnection = *p_xpcConnection;
  if (*p_xpcConnection)
  {
LABEL_7:
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __79__AWDLServiceDiscoveryManager__usingAWDLDiscoveryManagerProxy_onSuccess_error___block_invoke_7;
    v34[3] = &unk_2787AB0E0;
    v34[4] = &v47;
    v28 = [(NSXPCConnection *)xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v34];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __79__AWDLServiceDiscoveryManager__usingAWDLDiscoveryManagerProxy_onSuccess_error___block_invoke_8;
    v33[3] = &unk_2787AB130;
    v33[4] = &v56;
    v33[5] = &v47;
    proxyCopy[2](proxyCopy, v28, v33);
  }

  if (error)
  {
    v29 = v48[5];
    *error = v29;
    if (!(*p_xpcConnection | v29))
    {
      *error = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:6 userInfo:0];
    }
  }

  if (*(v57 + 24) == 1)
  {
    if (successCopy)
    {
      successCopy[2](successCopy, self);
    }

    if (![(AWDLServiceDiscoveryManager *)self _requiresConnection])
    {
      [(AWDLServiceDiscoveryManager *)self _destroyConnection];
      if (*p_notifyToken != -1)
      {
        notify_cancel(*p_notifyToken);
      }

      *p_notifyToken = -1;
    }

    if (error)
    {
      *error = 0;
    }
  }

  v30 = *(v57 + 24);
  _Block_object_dispose(&v47, 8);

  objc_destroyWeak(&location);
  _Block_object_dispose(&v56, 8);

  return v30;
}

void __79__AWDLServiceDiscoveryManager__usingAWDLDiscoveryManagerProxy_onSuccess_error___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained[1] lock];
    [v2 _retryConnection];
    [v2[1] unlock];
    WeakRetained = v2;
  }
}

void __79__AWDLServiceDiscoveryManager__usingAWDLDiscoveryManagerProxy_onSuccess_error___block_invoke_137(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v6 = a2;
  [*(*(*(a1 + 40) + 8) + 40) invalidate];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;
}

void __79__AWDLServiceDiscoveryManager__usingAWDLDiscoveryManagerProxy_onSuccess_error___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = [WiFiP2PXPCConnection convertError:a2];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  if (a2)
  {
    [*(*(*(a1 + 40) + 8) + 40) invalidate];
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = 0;
  }
}

void __79__AWDLServiceDiscoveryManager__usingAWDLDiscoveryManagerProxy_onSuccess_error___block_invoke_3(uint64_t a1)
{
  v2 = +[WiFiP2PXPCConnection wifiPeerToPeerWorkloop];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __79__AWDLServiceDiscoveryManager__usingAWDLDiscoveryManagerProxy_onSuccess_error___block_invoke_4;
  block[3] = &unk_2787AB1A8;
  objc_copyWeak(&v4, (a1 + 32));
  dispatch_async(v2, block);

  objc_destroyWeak(&v4);
}

void __79__AWDLServiceDiscoveryManager__usingAWDLDiscoveryManagerProxy_onSuccess_error___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained connectionInvalidated];
}

void __79__AWDLServiceDiscoveryManager__usingAWDLDiscoveryManagerProxy_onSuccess_error___block_invoke_5(uint64_t a1)
{
  v2 = +[WiFiP2PXPCConnection wifiPeerToPeerWorkloop];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __79__AWDLServiceDiscoveryManager__usingAWDLDiscoveryManagerProxy_onSuccess_error___block_invoke_6;
  block[3] = &unk_2787AB1A8;
  objc_copyWeak(&v4, (a1 + 32));
  dispatch_async(v2, block);

  objc_destroyWeak(&v4);
}

void __79__AWDLServiceDiscoveryManager__usingAWDLDiscoveryManagerProxy_onSuccess_error___block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained connectionInvalidated];
}

- (BOOL)setTrafficRegistration:(id)registration onInvalidationHandler:(id)handler error:(id *)error
{
  registrationCopy = registration;
  handlerCopy = handler;
  if (([registrationCopy isKnownService] & 1) == 0)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:22 userInfo:0];
    *error = v13 = 0;
    goto LABEL_13;
  }

  uniqueIdentifier = [registrationCopy uniqueIdentifier];
  v11 = [uniqueIdentifier isEqualToString:@"airplay-connectivity-check"];

  if (!v11)
  {
    uniqueIdentifier2 = [registrationCopy uniqueIdentifier];
    if ([uniqueIdentifier2 isEqualToString:@"airplay"])
    {
      peerAddress = [registrationCopy peerAddress];
      v16 = +[WiFiMACAddress zeroAddress];
      if ([peerAddress isEqual:v16])
      {
        options = [registrationCopy options];

        if ((options & 1) == 0)
        {
          [registrationCopy setActiveFlagOverride:1];
          v12 = [(AWDLServiceDiscoveryManager *)self clearTrafficRegistration:registrationCopy error:error];
          goto LABEL_4;
        }

LABEL_12:
        [registrationCopy setInvalidationHandler:handlerCopy];
        [(NSLock *)self->_lock lock];
        v24[0] = MEMORY[0x277D85DD0];
        v24[1] = 3221225472;
        v24[2] = __82__AWDLServiceDiscoveryManager_setTrafficRegistration_onInvalidationHandler_error___block_invoke;
        v24[3] = &unk_2787AB650;
        v25 = registrationCopy;
        v19 = MEMORY[0x277D85DD0];
        v20 = 3221225472;
        v21 = __82__AWDLServiceDiscoveryManager_setTrafficRegistration_onInvalidationHandler_error___block_invoke_2;
        v22 = &unk_2787AB6A0;
        v23 = v25;
        v13 = [(AWDLServiceDiscoveryManager *)self _usingAWDLDiscoveryManagerProxy:v24 onSuccess:&v19 error:error];
        [(NSLock *)self->_lock unlock:v19];

        goto LABEL_13;
      }
    }

    goto LABEL_12;
  }

  v12 = [(AWDLServiceDiscoveryManager *)self queryAirPlayConnectivityWithConfiguration:registrationCopy error:error];
LABEL_4:
  v13 = v12;
LABEL_13:

  return v13;
}

void __82__AWDLServiceDiscoveryManager_setTrafficRegistration_onInvalidationHandler_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = a2;
  [v6 trafficRegistration:v4 enabled:objc_msgSend(v4 completionHandler:{"activeFlagOverride") ^ 1, v5}];
}

void __82__AWDLServiceDiscoveryManager_setTrafficRegistration_onInvalidationHandler_error___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7[4] indexOfObject:*(a1 + 32)];
  if (v3 == 0x7FFFFFFFFFFFFFFFLL || (v4 = v3, [v7[4] objectAtIndex:v3], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "hasSimilarOptionsTo:", *(a1 + 32)), v5, (v6 & 1) != 0))
  {
    [v7[4] addObject:*(a1 + 32)];
  }

  else
  {
    [v7[4] replaceObjectAtIndex:v4 withObject:*(a1 + 32)];
  }
}

- (BOOL)clearTrafficRegistration:(id)registration error:(id *)error
{
  registrationCopy = registration;
  uniqueIdentifier = [registrationCopy uniqueIdentifier];
  if (![uniqueIdentifier isEqualToString:@"airplay"])
  {
    goto LABEL_6;
  }

  peerAddress = [registrationCopy peerAddress];
  v9 = +[WiFiMACAddress zeroAddress];
  if (([peerAddress isEqual:v9] & 1) == 0)
  {

LABEL_6:
    goto LABEL_7;
  }

  options = [registrationCopy options];

  if ((options & 1) == 0)
  {
LABEL_7:
    [(NSLock *)self->_lock lock];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __62__AWDLServiceDiscoveryManager_clearTrafficRegistration_error___block_invoke;
    v18[3] = &unk_2787AB650;
    v19 = registrationCopy;
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __62__AWDLServiceDiscoveryManager_clearTrafficRegistration_error___block_invoke_2;
    v16 = &unk_2787AB6A0;
    v17 = v19;
    v11 = [(AWDLServiceDiscoveryManager *)self _usingAWDLDiscoveryManagerProxy:v18 onSuccess:&v13 error:error];
    [(NSLock *)self->_lock unlock:v13];

    goto LABEL_8;
  }

  [registrationCopy setActiveFlagOverride:1];
  v11 = [(AWDLServiceDiscoveryManager *)self setTrafficRegistration:registrationCopy error:error];
LABEL_8:

  return v11;
}

void __62__AWDLServiceDiscoveryManager_clearTrafficRegistration_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = a2;
  [v6 trafficRegistration:v4 enabled:objc_msgSend(v4 completionHandler:{"activeFlagOverride"), v5}];
}

- (BOOL)getActiveTrafficRegistrationWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  [(NSLock *)self->_lock lock];
  v9 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __81__AWDLServiceDiscoveryManager_getActiveTrafficRegistrationWithCompletionHandler___block_invoke;
  v10[3] = &unk_2787AB6F0;
  v11 = 0;
  v12 = handlerCopy;
  v5 = handlerCopy;
  v6 = [(AWDLServiceDiscoveryManager *)self _usingAWDLDiscoveryManagerProxy:v10 onSuccess:&__block_literal_global_154 error:&v9];
  v7 = v9;
  [(NSLock *)self->_lock unlock];

  return v6;
}

void __81__AWDLServiceDiscoveryManager_getActiveTrafficRegistrationWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __81__AWDLServiceDiscoveryManager_getActiveTrafficRegistrationWithCompletionHandler___block_invoke_2;
  v4[3] = &unk_2787AB6C8;
  v6 = *(a1 + 40);
  v5 = *(a1 + 32);
  [a2 getActiveTrafficRegistrationWithCompletionHandler:v4];
}

uint64_t __81__AWDLServiceDiscoveryManager_getActiveTrafficRegistrationWithCompletionHandler___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 40);
  if (!a3)
  {
    a3 = *(a1 + 32);
  }

  return (*(v4 + 16))(v4, a2, a3);
}

- (BOOL)resumeAWDLWithError:(id *)error
{
  [(NSLock *)self->_lock lock];
  suspendCount = self->_suspendCount;
  v6 = __OFSUB__(suspendCount, 1);
  v7 = suspendCount - 1;
  if (v7)
  {
    if (v7 < 0 == v6)
    {
      self->_suspendCount = v7;
    }

    v8 = 1;
  }

  else
  {
    v8 = [(AWDLServiceDiscoveryManager *)self _usingAWDLDiscoveryManagerProxy:&__block_literal_global_156 onSuccess:&__block_literal_global_158 error:error];
  }

  [(NSLock *)self->_lock unlock];
  return v8;
}

- (BOOL)suspendAWDLWithError:(id *)error
{
  [(NSLock *)self->_lock lock];
  suspendCount = self->_suspendCount;
  if (suspendCount)
  {
    self->_suspendCount = suspendCount + 1;
    v6 = 1;
  }

  else
  {
    v6 = [(AWDLServiceDiscoveryManager *)self _usingAWDLDiscoveryManagerProxy:&__block_literal_global_160 onSuccess:&__block_literal_global_162 error:error];
  }

  [(NSLock *)self->_lock unlock];
  return v6;
}

- (BOOL)performRealtimeConnectivityCheckWithConfiguration:(id)configuration error:(id *)error
{
  configurationCopy = configuration;
  v22 = 0;
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __87__AWDLServiceDiscoveryManager_performRealtimeConnectivityCheckWithConfiguration_error___block_invoke;
  v20 = &unk_2787AB758;
  v6 = configurationCopy;
  v21 = v6;
  v7 = [WiFiP2PXPCConnection directQueryOnEndpointType:2 error:&v22 querying:&v17];
  v8 = v22;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = v7 == 0;
  }

  if (v9)
  {
    v10 = v8;
    if (error)
    {
      if (!v8)
      {
        v10 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:102 userInfo:{0, v17, v18, v19, v20}];
      }

      v11 = v10;
      v12 = 0;
      *error = v10;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    integerValue = [v7 integerValue];
    v14 = integerValue;
    if (error)
    {
      if (integerValue)
      {
        v15 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:integerValue userInfo:0];
        *error = v15;
      }

      else
      {
        *error = 0;
      }
    }

    v10 = 0;
    v12 = v14 == 0;
  }

  return v12;
}

- (void)_removeFirstTrafficRegistrationMatching:(id)matching
{
  v4 = [(NSMutableArray *)self->_activeTrafficRegistrations indexOfObject:matching];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = v4;
    activeTrafficRegistrations = self->_activeTrafficRegistrations;

    [(NSMutableArray *)activeTrafficRegistrations removeObjectAtIndex:v5];
  }
}

- (void)invalidatedActiveTrafficRegistration:(id)registration
{
  v20 = *MEMORY[0x277D85DE8];
  registrationCopy = registration;
  [(NSLock *)self->_lock lock];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_activeTrafficRegistrations;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        if ([v10 isEqual:{registrationCopy, v15}])
        {
          invalidationHandler = [v10 invalidationHandler];

          if (invalidationHandler)
          {
            invalidationHandler2 = [v10 invalidationHandler];
            (invalidationHandler2)[2](invalidationHandler2, v10);
          }
        }
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  [(NSMutableArray *)self->_activeTrafficRegistrations removeObject:registrationCopy];
  if (![(AWDLServiceDiscoveryManager *)self _requiresConnection])
  {
    [(AWDLServiceDiscoveryManager *)self _destroyConnection];
    notifyToken = self->_notifyToken;
    if (notifyToken != -1)
    {
      notify_cancel(notifyToken);
    }

    self->_notifyToken = -1;
  }

  [(NSLock *)self->_lock unlock];

  v14 = *MEMORY[0x277D85DE8];
}

@end