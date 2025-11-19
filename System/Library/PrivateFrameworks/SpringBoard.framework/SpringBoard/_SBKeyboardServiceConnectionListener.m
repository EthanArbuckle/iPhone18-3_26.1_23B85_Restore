@interface _SBKeyboardServiceConnectionListener
- (_SBKeyboardServiceConnectionListener)initWithServiceQueue:(id)a3;
- (_SBKeyboardServiceConnectionListenerDelegate)delegate;
- (id)_clientForConnectionContext:(id)a3;
- (void)_handleDisconnectForServiceConnection:(id)a3;
- (void)deferAdditionalEnvironments:(id)a3 whenSceneHasKeyboardFocus:(id)a4 pid:(id)a5;
- (void)listener:(id)a3 didReceiveConnection:(id)a4 withContext:(id)a5;
- (void)removeKeyboardFocusFromSceneIdentity:(id)a3 pid:(id)a4;
- (void)requestKeyboardFocusForSceneIdentity:(id)a3 pid:(id)a4 completion:(id)a5;
- (void)setExternalSceneIdentities:(id)a3;
- (void)stopApplyingAdditionalDeferringRulesWhenSceneHasKeyboardFocus:(id)a3 pid:(id)a4;
@end

@implementation _SBKeyboardServiceConnectionListener

- (_SBKeyboardServiceConnectionListener)initWithServiceQueue:(id)a3
{
  v5 = a3;
  v19.receiver = self;
  v19.super_class = _SBKeyboardServiceConnectionListener;
  v6 = [(_SBKeyboardServiceConnectionListener *)&v19 init];
  if (v6)
  {
    v7 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    connectionContextToClientMap = v6->_connectionContextToClientMap;
    v6->_connectionContextToClientMap = v7;

    v9 = objc_alloc(MEMORY[0x277D0AAF8]);
    v10 = [v9 initWithEntitlement:*MEMORY[0x277D66FE8]];
    serviceClientAuthenticator = v6->_serviceClientAuthenticator;
    v6->_serviceClientAuthenticator = v10;

    objc_storeStrong(&v6->_serviceQueue, a3);
    v12 = MEMORY[0x277CF32A0];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __61___SBKeyboardServiceConnectionListener_initWithServiceQueue___block_invoke;
    v17[3] = &unk_2783A9A18;
    v13 = v6;
    v18 = v13;
    v14 = [v12 listenerWithConfigurator:v17];
    connectionListener = v13->_connectionListener;
    v13->_connectionListener = v14;
  }

  return v6;
}

- (id)_clientForConnectionContext:(id)a3
{
  v4 = a3;
  v5 = [(NSMapTable *)self->_connectionContextToClientMap objectForKey:v4];
  if (!v5)
  {
    v5 = [[_SBKeyboardServiceClient alloc] initWithConnectionContext:v4];
    [(NSMapTable *)self->_connectionContextToClientMap setObject:v5 forKey:v4];
  }

  return v5;
}

- (void)requestKeyboardFocusForSceneIdentity:(id)a3 pid:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  dispatch_assert_queue_V2(self->_serviceQueue);
  v11 = [MEMORY[0x277CF3280] currentContext];
  v12 = [(_SBKeyboardServiceConnectionListener *)self _clientForConnectionContext:v11];

  if (!v12)
  {
    [_SBKeyboardServiceConnectionListener requestKeyboardFocusForSceneIdentity:pid:completion:];
  }

  serviceClientAuthenticator = self->_serviceClientAuthenticator;
  v14 = [MEMORY[0x277CF3280] currentContext];
  v15 = [v14 remoteToken];
  v20 = 0;
  v16 = [(FBServiceClientAuthenticator *)serviceClientAuthenticator authenticateAuditToken:v15 error:&v20];
  v17 = v20;

  if (v16)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (!WeakRetained)
    {
      [_SBKeyboardServiceConnectionListener requestKeyboardFocusForSceneIdentity:pid:completion:];
    }

    [WeakRetained client:v12 requestKeyboardFocusForSceneIdentity:v8 pid:v9 completion:v10];
  }

  else
  {
    v19 = SBLogKeyboardFocus();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [_SBKeyboardServiceConnectionListener requestKeyboardFocusForSceneIdentity:pid:completion:];
    }

    v10[2](v10, MEMORY[0x277CBEC28], v17);
  }
}

- (void)removeKeyboardFocusFromSceneIdentity:(id)a3 pid:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_serviceQueue);
  v8 = [MEMORY[0x277CF3280] currentContext];
  v9 = [(_SBKeyboardServiceConnectionListener *)self _clientForConnectionContext:v8];

  if (!v9)
  {
    [_SBKeyboardServiceConnectionListener removeKeyboardFocusFromSceneIdentity:pid:];
  }

  serviceClientAuthenticator = self->_serviceClientAuthenticator;
  v11 = [v9 auditToken];
  v15 = 0;
  v12 = [(FBServiceClientAuthenticator *)serviceClientAuthenticator authenticateAuditToken:v11 error:&v15];
  v13 = v15;

  if (v12)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (!WeakRetained)
    {
      [_SBKeyboardServiceConnectionListener removeKeyboardFocusFromSceneIdentity:pid:];
    }

    [WeakRetained client:v9 removeKeyboardFocusFromSceneIdentity:v6 pid:v7];
  }

  else
  {
    WeakRetained = SBLogKeyboardFocus();
    if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_ERROR))
    {
      [_SBKeyboardServiceConnectionListener requestKeyboardFocusForSceneIdentity:pid:completion:];
    }
  }
}

- (void)deferAdditionalEnvironments:(id)a3 whenSceneHasKeyboardFocus:(id)a4 pid:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  dispatch_assert_queue_V2(self->_serviceQueue);
  v11 = [MEMORY[0x277CF3280] currentContext];
  v12 = [(_SBKeyboardServiceConnectionListener *)self _clientForConnectionContext:v11];

  if (!v12)
  {
    [_SBKeyboardServiceConnectionListener deferAdditionalEnvironments:whenSceneHasKeyboardFocus:pid:];
  }

  serviceClientAuthenticator = self->_serviceClientAuthenticator;
  v14 = [v12 auditToken];
  v18 = 0;
  v15 = [(FBServiceClientAuthenticator *)serviceClientAuthenticator authenticateAuditToken:v14 error:&v18];
  v16 = v18;

  if (v15)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (!WeakRetained)
    {
      [_SBKeyboardServiceConnectionListener deferAdditionalEnvironments:whenSceneHasKeyboardFocus:pid:];
    }

    [WeakRetained client:v12 deferAdditionalEnvironments:v8 whenSceneHasKeyboardFocus:v9 pid:v10];
  }

  else
  {
    WeakRetained = SBLogKeyboardFocus();
    if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_ERROR))
    {
      [_SBKeyboardServiceConnectionListener requestKeyboardFocusForSceneIdentity:pid:completion:];
    }
  }
}

- (void)stopApplyingAdditionalDeferringRulesWhenSceneHasKeyboardFocus:(id)a3 pid:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_serviceQueue);
  v8 = [MEMORY[0x277CF3280] currentContext];
  v9 = [(_SBKeyboardServiceConnectionListener *)self _clientForConnectionContext:v8];

  if (!v9)
  {
    [_SBKeyboardServiceConnectionListener stopApplyingAdditionalDeferringRulesWhenSceneHasKeyboardFocus:pid:];
  }

  serviceClientAuthenticator = self->_serviceClientAuthenticator;
  v11 = [v9 auditToken];
  v15 = 0;
  v12 = [(FBServiceClientAuthenticator *)serviceClientAuthenticator authenticateAuditToken:v11 error:&v15];
  v13 = v15;

  if (v12)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (!WeakRetained)
    {
      [_SBKeyboardServiceConnectionListener stopApplyingAdditionalDeferringRulesWhenSceneHasKeyboardFocus:pid:];
    }

    [WeakRetained client:v9 stopApplyingAdditionalDeferringRulesWhenSceneHasKeyboardFocus:v6 pid:v7];
  }

  else
  {
    WeakRetained = SBLogKeyboardFocus();
    if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_ERROR))
    {
      [_SBKeyboardServiceConnectionListener requestKeyboardFocusForSceneIdentity:pid:completion:];
    }
  }
}

- (void)setExternalSceneIdentities:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_serviceQueue);
  v5 = [MEMORY[0x277CF3280] currentContext];
  v6 = [(_SBKeyboardServiceConnectionListener *)self _clientForConnectionContext:v5];

  if (!v6)
  {
    [_SBKeyboardServiceConnectionListener setExternalSceneIdentities:];
  }

  serviceClientAuthenticator = self->_serviceClientAuthenticator;
  v8 = [v6 auditToken];
  v12 = 0;
  v9 = [(FBServiceClientAuthenticator *)serviceClientAuthenticator authenticateAuditToken:v8 error:&v12];
  v10 = v12;

  if (v9)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (!WeakRetained)
    {
      [_SBKeyboardServiceConnectionListener setExternalSceneIdentities:];
    }

    [WeakRetained client:v6 setExternalSceneIdentities:v4];
  }

  else
  {
    WeakRetained = SBLogKeyboardFocus();
    if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_ERROR))
    {
      [_SBKeyboardServiceConnectionListener requestKeyboardFocusForSceneIdentity:pid:completion:];
    }
  }
}

- (void)listener:(id)a3 didReceiveConnection:(id)a4 withContext:(id)a5
{
  v6 = MEMORY[0x277CF3280];
  v7 = a4;
  v8 = [v6 currentContext];
  v9 = [(_SBKeyboardServiceConnectionListener *)self _clientForConnectionContext:v8];

  if (!v9)
  {
    [_SBKeyboardServiceConnectionListener listener:didReceiveConnection:withContext:];
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __82___SBKeyboardServiceConnectionListener_listener_didReceiveConnection_withContext___block_invoke;
  v11[3] = &unk_2783AB730;
  v11[4] = self;
  [v7 configureConnection:v11];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained clientDidConnect:v9];

  [v7 activate];
}

- (void)_handleDisconnectForServiceConnection:(id)a3
{
  v7 = a3;
  dispatch_assert_queue_V2(self->_serviceQueue);
  v4 = [MEMORY[0x277CF3280] currentContext];
  v5 = [(_SBKeyboardServiceConnectionListener *)self _clientForConnectionContext:v4];

  if (!v5)
  {
    [_SBKeyboardServiceConnectionListener _handleDisconnectForServiceConnection:];
  }

  [(_SBKeyboardServiceConnectionListener *)self _removeClientForConnectionContext:v7];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained clientDidDisconnect:v5];
}

- (_SBKeyboardServiceConnectionListenerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)requestKeyboardFocusForSceneIdentity:pid:completion:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"client" object:? file:? lineNumber:? description:?];
}

- (void)requestKeyboardFocusForSceneIdentity:pid:completion:.cold.2()
{
  OUTLINED_FUNCTION_5_1();
  [v0 pid];
  OUTLINED_FUNCTION_0_27();
  OUTLINED_FUNCTION_3_6(&dword_21ED4E000, v1, v2, "SBKeyboardFocusService: Failed to authenticate client with pid %i -  %{public}@", v3, v4, v5, v6, v7);
}

- (void)requestKeyboardFocusForSceneIdentity:pid:completion:.cold.3()
{
  OUTLINED_FUNCTION_1_2();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:@"delegate" object:? file:? lineNumber:? description:?];
}

- (void)removeKeyboardFocusFromSceneIdentity:pid:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"client" object:? file:? lineNumber:? description:?];
}

- (void)removeKeyboardFocusFromSceneIdentity:pid:.cold.3()
{
  OUTLINED_FUNCTION_1_2();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:@"delegate" object:? file:? lineNumber:? description:?];
}

- (void)deferAdditionalEnvironments:whenSceneHasKeyboardFocus:pid:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"client" object:? file:? lineNumber:? description:?];
}

- (void)deferAdditionalEnvironments:whenSceneHasKeyboardFocus:pid:.cold.3()
{
  OUTLINED_FUNCTION_1_2();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:@"delegate" object:? file:? lineNumber:? description:?];
}

- (void)stopApplyingAdditionalDeferringRulesWhenSceneHasKeyboardFocus:pid:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"client" object:? file:? lineNumber:? description:?];
}

- (void)stopApplyingAdditionalDeferringRulesWhenSceneHasKeyboardFocus:pid:.cold.3()
{
  OUTLINED_FUNCTION_1_2();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:@"delegate" object:? file:? lineNumber:? description:?];
}

- (void)setExternalSceneIdentities:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"client" object:? file:? lineNumber:? description:?];
}

- (void)setExternalSceneIdentities:.cold.3()
{
  OUTLINED_FUNCTION_1_2();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:@"delegate" object:? file:? lineNumber:? description:?];
}

- (void)listener:didReceiveConnection:withContext:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"client" object:? file:? lineNumber:? description:?];
}

- (void)_handleDisconnectForServiceConnection:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"client" object:? file:? lineNumber:? description:?];
}

@end