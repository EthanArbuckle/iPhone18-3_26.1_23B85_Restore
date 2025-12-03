@interface TRDeviceSetupServer
+ (void)initialize;
- (BOOL)_sendAction:(id)action sendDataHandler:(id)handler shouldSendNilOnFailure:(BOOL)failure error:(id *)error;
- (TRDeviceSetupServer)init;
- (TRDeviceSetupServerDelegate)delegate;
- (void)_authenticateAccount:(unint64_t)account withAuthInfo:(id)info completion:(id)completion;
- (void)_authenticateWithAction:(id)action replyHandler:(id)handler;
- (void)_cancelTransferConnection;
- (void)_cancelWithAction:(id)action replyHandler:(id)handler;
- (void)_connectWithAction:(id)action replyHandler:(id)handler;
- (void)_finishSetupWithError:(id)error replyHandler:(id)handler;
- (void)_finishWithAction:(id)action replyHandler:(id)handler;
- (void)_requestAuthenticationForAccount:(unint64_t)account replyHandler:(id)handler;
- (void)_requestAuthenticationForNextAccountWithReplyHandler:(id)handler;
- (void)_requestAuthenticationFromPeripheralForAccount:(unint64_t)account lastAttemptAction:(id)action lastAttemptError:(id)error replyHandler:(id)handler;
- (void)_requestGeneralSetupWithReplyHandler:(id)handler;
- (void)_setUpWithAction:(id)action replyHandler:(id)handler;
- (void)cancelActiveSetup;
- (void)dealloc;
- (void)server:(id)server didFailToReceiveData:(id)data;
- (void)server:(id)server didReceiveData:(id)data replyHandler:(id)handler;
- (void)serverWillReceiveData:(id)data;
- (void)start;
- (void)stop;
@end

@implementation TRDeviceSetupServer

+ (void)initialize
{
  v2 = objc_opt_class();
  if (v2 == objc_opt_class())
  {

    TRLogInitialize();
  }
}

- (TRDeviceSetupServer)init
{
  v6.receiver = self;
  v6.super_class = TRDeviceSetupServer;
  v2 = [(TRDeviceSetupServer *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(TRTransferServer);
    transferServer = v2->_transferServer;
    v2->_transferServer = v3;

    [(TRTransferServer *)v2->_transferServer setDelegate:v2];
    v2->_notifyTokenIsValid = notify_register_check("com.apple.TouchRemote.deviceSetupActive", &v2->_notifyToken) == 0;
  }

  return v2;
}

- (void)dealloc
{
  [(TRTransferServer *)self->_transferServer setDelegate:0];
  if (self->_notifyTokenIsValid)
  {
    notify_cancel(self->_notifyToken);
  }

  v3.receiver = self;
  v3.super_class = TRDeviceSetupServer;
  [(TRDeviceSetupServer *)&v3 dealloc];
}

- (void)serverWillReceiveData:(id)data
{
  self->_setupInProgress = 1;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 deviceSetupServerDidPromptToBeginSetup:self];
  }
}

- (void)server:(id)server didReceiveData:(id)data replyHandler:(id)handler
{
  v25 = *MEMORY[0x277D85DE8];
  serverCopy = server;
  dataCopy = data;
  handlerCopy = handler;
  if (_TRLogEnabled == 1)
  {
    v11 = TRLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v22 = [dataCopy length];
      _os_log_impl(&dword_26F2A2000, v11, OS_LOG_TYPE_DEFAULT, "[TRDeviceSetupServer] Server got data of length %li", buf, 0xCu);
    }
  }

  if (self->_cancelledSetupInProgress)
  {
    v12 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TRDeviceSetupErrorDomain" code:-8104 userInfo:0];
    [(TRDeviceSetupServer *)self _finishSetupWithError:v12 replyHandler:handlerCopy];
  }

  else
  {
    v20 = 0;
    v13 = [TRDeviceSetupAction actionWithData:dataCopy error:&v20 supportsLegacy:0];
    v12 = v20;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(TRDeviceSetupServer *)self _connectWithAction:v13 replyHandler:handlerCopy];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(TRDeviceSetupServer *)self _authenticateWithAction:v13 replyHandler:handlerCopy];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(TRDeviceSetupServer *)self _setUpWithAction:v13 replyHandler:handlerCopy];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [(TRDeviceSetupServer *)self _finishWithAction:v13 replyHandler:handlerCopy];
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [(TRDeviceSetupServer *)self _cancelWithAction:v13 replyHandler:handlerCopy];
            }

            else
            {
              if (_TRLogEnabled == 1)
              {
                v14 = TRLogHandle();
                if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412546;
                  v22 = v13;
                  v23 = 2112;
                  v24 = v12;
                  _os_log_impl(&dword_26F2A2000, v14, OS_LOG_TYPE_DEFAULT, "[TRDeviceSetupServer] Failed to handle action: %@. Error: %@", buf, 0x16u);
                }
              }

              v15 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TRDeviceSetupErrorDomain" code:-8101 userInfo:0];
              [(TRDeviceSetupServer *)self _finishSetupWithError:v15 replyHandler:handlerCopy];
              delegate = [(TRDeviceSetupServer *)self delegate];
              v17 = objc_opt_respondsToSelector();

              if (v17)
              {
                delegate2 = [(TRDeviceSetupServer *)self delegate];
                [delegate2 deviceSetupServer:self didFailSetupWithError:v15];
              }
            }
          }
        }
      }
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)server:(id)server didFailToReceiveData:(id)data
{
  v14[1] = *MEMORY[0x277D85DE8];
  serverCopy = server;
  dataCopy = data;
  v8 = dataCopy;
  if (self->_setupInProgress)
  {
    v9 = MEMORY[0x277CCA9B8];
    if (dataCopy)
    {
      v13 = *MEMORY[0x277CCA7E8];
      v14[0] = dataCopy;
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
      v11 = [v9 errorWithDomain:@"TRDeviceSetupErrorDomain" code:-8100 userInfo:v10];
    }

    else
    {
      v11 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TRDeviceSetupErrorDomain" code:-8100 userInfo:0];
    }

    [(TRDeviceSetupServer *)self _finishSetupWithError:v11 replyHandler:0];
    [(TRDeviceSetupServer *)self _cancelTransferConnection];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)cancelActiveSetup
{
  if (self->_setupInProgress)
  {
    self->_cancelledSetupInProgress = 1;
    [(TRDeviceSetupServer *)self _cancelTransferConnection];
  }
}

- (void)start
{
  [(TRTransferServer *)self->_transferServer start];
  self->_started = 1;
  if (self->_notifyTokenIsValid)
  {
    notify_set_state(self->_notifyToken, 1uLL);

    notify_post("com.apple.TouchRemote.deviceSetupActive");
  }
}

- (void)stop
{
  [(TRTransferServer *)self->_transferServer stop];
  self->_started = 0;
  self->_cancelledSetupInProgress = 0;
  if (self->_notifyTokenIsValid)
  {
    notify_set_state(self->_notifyToken, 0);

    notify_post("com.apple.TouchRemote.deviceSetupActive");
  }
}

- (void)_cancelTransferConnection
{
  [(TRTransferServer *)self->_transferServer setDelegate:0];
  [(TRTransferServer *)self->_transferServer stop];
  transferServer = self->_transferServer;
  self->_transferServer = 0;

  v4 = objc_alloc_init(TRTransferServer);
  v5 = self->_transferServer;
  self->_transferServer = v4;

  [(TRTransferServer *)self->_transferServer setDelegate:self];
  if (self->_started)
  {
    v6 = self->_transferServer;

    [(TRTransferServer *)v6 start];
  }
}

- (void)_connectWithAction:(id)action replyHandler:(id)handler
{
  v25 = *MEMORY[0x277D85DE8];
  actionCopy = action;
  handlerCopy = handler;
  if (_TRLogEnabled == 1)
  {
    v8 = TRLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26F2A2000, v8, OS_LOG_TYPE_DEFAULT, "[TRDeviceSetupServer] Beginning the setup process.", buf, 2u);
    }
  }

  delegate = [(TRDeviceSetupServer *)self delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    delegate2 = [(TRDeviceSetupServer *)self delegate];
    deviceName = [actionCopy deviceName];
    [delegate2 deviceSetupServer:self didBeginSetupWithDeviceName:deviceName];
  }

  if (_TRLogEnabled == 1)
  {
    v13 = TRLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      networkSSID = [actionCopy networkSSID];
      *buf = 138412290;
      v24 = networkSSID;
      _os_log_impl(&dword_26F2A2000, v13, OS_LOG_TYPE_DEFAULT, "[TRDeviceSetupServer] Asking delegate to connect to a network. Recommended network SSID = %@.", buf, 0xCu);
    }
  }

  objc_initWeak(buf, self);
  delegate3 = [(TRDeviceSetupServer *)self delegate];
  networkSSID2 = [actionCopy networkSSID];
  networkPassword = [actionCopy networkPassword];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __55__TRDeviceSetupServer__connectWithAction_replyHandler___block_invoke;
  v20[3] = &unk_279DCF110;
  objc_copyWeak(&v22, buf);
  v18 = handlerCopy;
  v21 = v18;
  [delegate3 deviceSetupServer:self connectToNetworkWithRecommendedSSID:networkSSID2 password:networkPassword completionHandler:v20];

  objc_destroyWeak(&v22);
  objc_destroyWeak(buf);

  v19 = *MEMORY[0x277D85DE8];
}

void __55__TRDeviceSetupServer__connectWithAction_replyHandler___block_invoke(uint64_t a1, int a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (_TRLogEnabled == 1)
  {
    v6 = TRLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = @"failed to connect to";
      if (a2)
      {
        v7 = @"successfully connected to";
      }

      v18 = 138412290;
      v19 = v7;
      _os_log_impl(&dword_26F2A2000, v6, OS_LOG_TYPE_DEFAULT, "[TRDeviceSetupServer] Delegate %@ a network.", &v18, 0xCu);
    }
  }

  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained setCachedAuthInfo:0];

    v9 = objc_loadWeakRetained((a1 + 40));
    v10 = [v9 delegate];
    v11 = objc_loadWeakRetained((a1 + 40));
    v12 = [v10 accountsToAuthenticateForDeviceSetupServer:v11];
    v13 = [v12 mutableCopy];
    v14 = objc_loadWeakRetained((a1 + 40));
    [v14 setAccountsToAuthenticate:v13];

    v15 = objc_loadWeakRetained((a1 + 40));
    [v15 _requestAuthenticationForNextAccountWithReplyHandler:*(a1 + 32)];
LABEL_11:

    goto LABEL_12;
  }

  if (*(a1 + 32))
  {
    v15 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TRDeviceSetupErrorDomain" code:-8110 userInfo:0];
    v16 = objc_loadWeakRetained((a1 + 40));
    [v16 _finishSetupWithError:v15 replyHandler:*(a1 + 32)];

    goto LABEL_11;
  }

LABEL_12:

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_requestAuthenticationForNextAccountWithReplyHandler:(id)handler
{
  handlerCopy = handler;
  accountsToAuthenticate = [(TRDeviceSetupServer *)self accountsToAuthenticate];
  v5 = [accountsToAuthenticate count];

  if (v5)
  {
    accountsToAuthenticate2 = [(TRDeviceSetupServer *)self accountsToAuthenticate];
    firstObject = [accountsToAuthenticate2 firstObject];
    unsignedIntegerValue = [firstObject unsignedIntegerValue];

    accountsToAuthenticate3 = [(TRDeviceSetupServer *)self accountsToAuthenticate];
    [accountsToAuthenticate3 removeObjectAtIndex:0];
  }

  else
  {
    unsignedIntegerValue = 0;
  }

  delegate = [(TRDeviceSetupServer *)self delegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    delegate2 = [(TRDeviceSetupServer *)self delegate];
    [delegate2 deviceSetupServer:self willRequestAuthenticationForAccount:unsignedIntegerValue];
  }

  [(TRDeviceSetupServer *)self _requestAuthenticationForAccount:unsignedIntegerValue replyHandler:handlerCopy];
}

- (void)_requestAuthenticationForAccount:(unint64_t)account replyHandler:(id)handler
{
  handlerCopy = handler;
  if (account)
  {
    cachedAuthInfo = [(TRDeviceSetupServer *)self cachedAuthInfo];
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:account];
    v9 = [cachedAuthInfo objectForKeyedSubscript:v8];

    objc_initWeak(&location, self);
    if (v9)
    {
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __69__TRDeviceSetupServer__requestAuthenticationForAccount_replyHandler___block_invoke;
      v10[3] = &unk_279DCF138;
      objc_copyWeak(v12, &location);
      v11 = handlerCopy;
      v12[1] = account;
      [(TRDeviceSetupServer *)self _authenticateAccount:account withAuthInfo:v9 completion:v10];

      objc_destroyWeak(v12);
    }

    else
    {
      [(TRDeviceSetupServer *)self _requestAuthenticationFromPeripheralForAccount:account lastAttemptAction:0 lastAttemptError:0 replyHandler:handlerCopy];
    }

    objc_destroyWeak(&location);
  }

  else
  {
    [(TRDeviceSetupServer *)self _requestGeneralSetupWithReplyHandler:handlerCopy];
  }
}

void __69__TRDeviceSetupServer__requestAuthenticationForAccount_replyHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = WeakRetained;
  if (a2 == 1)
  {
    [WeakRetained _requestAuthenticationForNextAccountWithReplyHandler:*(a1 + 32)];
  }

  else
  {
    v5 = [WeakRetained cachedAuthInfo];
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 48)];
    [v5 removeObjectForKey:v6];

    v7 = objc_loadWeakRetained((a1 + 40));
    [v7 _requestAuthenticationForAccount:*(a1 + 48) replyHandler:*(a1 + 32)];
  }
}

- (void)_requestAuthenticationFromPeripheralForAccount:(unint64_t)account lastAttemptAction:(id)action lastAttemptError:(id)error replyHandler:(id)handler
{
  v30 = *MEMORY[0x277D85DE8];
  actionCopy = action;
  errorCopy = error;
  handlerCopy = handler;
  delegate = [(TRDeviceSetupServer *)self delegate];
  v14 = objc_opt_respondsToSelector();

  if (v14)
  {
    delegate2 = [(TRDeviceSetupServer *)self delegate];
    v16 = [delegate2 deviceSetupServer:self localizedAuthenticationMessageForAccount:account];

    if (!errorCopy)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v16 = 0;
    if (!errorCopy)
    {
      goto LABEL_7;
    }
  }

  domain = [errorCopy domain];
  v18 = [domain isEqualToString:@"TRDeviceSetupErrorDomain"];

  if (v18)
  {
    localizedDescription = [errorCopy localizedDescription];
    goto LABEL_8;
  }

LABEL_7:
  localizedDescription = 0;
LABEL_8:
  if (actionCopy)
  {
    [TRDeviceSetupAuthenticateAction actionForFailedAttemptWithOriginalAction:actionCopy requestMessage:v16 failureMessage:localizedDescription];
  }

  else
  {
    [TRDeviceSetupAuthenticateAction actionForInitialAttemptWithAccountType:account requestMessage:v16];
  }
  v20 = ;
  v25 = 0;
  v21 = [(TRDeviceSetupServer *)self _sendAction:v20 sendDataHandler:handlerCopy shouldSendNilOnFailure:0 error:&v25];
  v22 = v25;
  if (!v21)
  {
    if (_TRLogEnabled == 1)
    {
      v23 = TRLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v27 = v20;
        v28 = 2112;
        v29 = v22;
        _os_log_impl(&dword_26F2A2000, v23, OS_LOG_TYPE_DEFAULT, "[TRDeviceSetupServer] Failed to send auth request, moving on to general setup. Action: %@. Error: %@.", buf, 0x16u);
      }
    }

    [(TRDeviceSetupServer *)self _requestGeneralSetupWithReplyHandler:handlerCopy];
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)_authenticateAccount:(unint64_t)account withAuthInfo:(id)info completion:(id)completion
{
  v28 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  completionCopy = completion;
  v10 = [infoCopy objectForKeyedSubscript:@"TRDeviceSetupAuthenticationKeyAccountID"];
  v11 = [infoCopy objectForKeyedSubscript:@"TRDeviceSetupAuthenticationKeyAccountPassword"];
  if (account && [v10 length] && objc_msgSend(v11, "length") && (-[TRDeviceSetupServer delegate](self, "delegate"), v12 = objc_claimAutoreleasedReturnValue(), v12, v12))
  {
    if (_TRLogEnabled == 1)
    {
      v13 = TRLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = TRStringFromSetupAccountType(account);
        *buf = 138412290;
        v25 = v14;
        _os_log_impl(&dword_26F2A2000, v13, OS_LOG_TYPE_DEFAULT, "[TRDeviceSetupServer] Asking delegate to authenticate account %@.", buf, 0xCu);
      }
    }

    delegate = [(TRDeviceSetupServer *)self delegate];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __68__TRDeviceSetupServer__authenticateAccount_withAuthInfo_completion___block_invoke;
    v21[3] = &unk_279DCF160;
    accountCopy = account;
    v22 = completionCopy;
    [delegate deviceSetupServer:self authenticateAccount:account withInfo:infoCopy completionHandler:v21];
  }

  else
  {
    if (_TRLogEnabled == 1)
    {
      v16 = TRLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = TRStringFromSetupAccountType(account);
        delegate2 = [(TRDeviceSetupServer *)self delegate];
        v19 = &stru_287F58968;
        if (!delegate2)
        {
          v19 = @" (No delegate)";
        }

        *buf = 138412546;
        v25 = v17;
        v26 = 2112;
        v27 = v19;
        _os_log_impl(&dword_26F2A2000, v16, OS_LOG_TYPE_DEFAULT, "[TRDeviceSetupServer] Skipping authentication for account %@.%@", buf, 0x16u);
      }
    }

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 2, 0);
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __68__TRDeviceSetupServer__authenticateAccount_withAuthInfo_completion___block_invoke(uint64_t a1, unsigned int a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (_TRLogEnabled == 1)
  {
    v6 = TRLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      if (a2)
      {
        v7 = @"successfully authenticated";
      }

      else
      {
        v7 = @"failed to authenticate";
      }

      v8 = TRStringFromSetupAccountType(*(a1 + 40));
      v11 = 138412546;
      v12 = v7;
      v13 = 2112;
      v14 = v8;
      _os_log_impl(&dword_26F2A2000, v6, OS_LOG_TYPE_DEFAULT, "[TRDeviceSetupServer] Delegate %@ account %@.", &v11, 0x16u);
    }
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    (*(v9 + 16))(v9, a2, v5);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_authenticateWithAction:(id)action replyHandler:(id)handler
{
  v28[3] = *MEMORY[0x277D85DE8];
  actionCopy = action;
  handlerCopy = handler;
  v27[0] = @"TRDeviceSetupAuthenticationKeyAccountID";
  accountID = [actionCopy accountID];
  v9 = accountID;
  if (accountID)
  {
    v10 = accountID;
  }

  else
  {
    v10 = &stru_287F58968;
  }

  v28[0] = v10;
  v27[1] = @"TRDeviceSetupAuthenticationKeyAccountPassword";
  accountPassword = [actionCopy accountPassword];
  v12 = accountPassword;
  if (accountPassword)
  {
    v13 = accountPassword;
  }

  else
  {
    v13 = &stru_287F58968;
  }

  v28[1] = v13;
  v27[2] = @"TRDeviceSetupAuthenticationKeyAttemptCount";
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(actionCopy, "attemptCount")}];
  v28[2] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:3];

  objc_initWeak(&location, self);
  accountType = [actionCopy accountType];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __60__TRDeviceSetupServer__authenticateWithAction_replyHandler___block_invoke;
  v21[3] = &unk_279DCF188;
  v17 = actionCopy;
  v22 = v17;
  objc_copyWeak(&v25, &location);
  v18 = v15;
  v23 = v18;
  v19 = handlerCopy;
  v24 = v19;
  [(TRDeviceSetupServer *)self _authenticateAccount:accountType withAuthInfo:v18 completion:v21];

  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);

  v20 = *MEMORY[0x277D85DE8];
}

void __60__TRDeviceSetupServer__authenticateWithAction_replyHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2 != 2)
  {
    if (a2 != 1)
    {
      WeakRetained = objc_loadWeakRetained((a1 + 56));
      [WeakRetained _requestAuthenticationFromPeripheralForAccount:objc_msgSend(*(a1 + 32) lastAttemptAction:"accountType") lastAttemptError:*(a1 + 32) replyHandler:{v5, *(a1 + 48)}];
      goto LABEL_16;
    }

    v6 = [*(a1 + 32) accountTypesWithSharedCredentials];
    v7 = [v6 count];

    if (v7)
    {
      v8 = objc_loadWeakRetained((a1 + 56));
      v9 = [v8 cachedAuthInfo];

      if (!v9)
      {
        v10 = objc_loadWeakRetained((a1 + 56));
        v11 = [MEMORY[0x277CBEB38] dictionary];
        [v10 setCachedAuthInfo:v11];
      }

      v12 = [*(a1 + 40) mutableCopy];
      [v12 setObject:&unk_287F62960 forKeyedSubscript:@"TRDeviceSetupAuthenticationKeyAttemptCount"];
      v24 = v12;
      v13 = [v12 copy];
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v14 = [*(a1 + 32) accountTypesWithSharedCredentials];
      v15 = [v14 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v26;
        do
        {
          v18 = 0;
          do
          {
            if (*v26 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v25 + 1) + 8 * v18);
            v20 = objc_loadWeakRetained((a1 + 56));
            v21 = [v20 cachedAuthInfo];
            [v21 setObject:v13 forKeyedSubscript:v19];

            ++v18;
          }

          while (v16 != v18);
          v16 = [v14 countByEnumeratingWithState:&v25 objects:v29 count:16];
        }

        while (v16);
      }
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _requestAuthenticationForNextAccountWithReplyHandler:*(a1 + 48)];
LABEL_16:

  v23 = *MEMORY[0x277D85DE8];
}

- (void)_requestGeneralSetupWithReplyHandler:(id)handler
{
  handlerCopy = handler;
  [(TRDeviceSetupServer *)self setAccountsToAuthenticate:0];
  v5 = objc_alloc_init(TRDeviceSetupGeneralSetupAction);
  [(TRDeviceSetupServer *)self _sendAction:v5 sendDataHandler:handlerCopy shouldSendNilOnFailure:1 error:0];
}

- (void)_setUpWithAction:(id)action replyHandler:(id)handler
{
  actionCopy = action;
  handlerCopy = handler;
  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  countryCode = [actionCopy countryCode];

  if (countryCode)
  {
    countryCode2 = [actionCopy countryCode];
    [v7 setObject:countryCode2 forKeyedSubscript:@"TRDeviceSetupInfoKeyCountryCode"];
  }

  language = [actionCopy language];

  if (language)
  {
    language2 = [actionCopy language];
    [v7 setObject:language2 forKeyedSubscript:@"TRDeviceSetupInfoKeyLanguage"];
  }

  homeSharingID = [actionCopy homeSharingID];

  if (homeSharingID)
  {
    homeSharingID2 = [actionCopy homeSharingID];
    [v7 setObject:homeSharingID2 forKeyedSubscript:@"TRDeviceSetupInfoKeyHomeSharingAppleID"];
  }

  homeSharingGroupID = [actionCopy homeSharingGroupID];

  if (homeSharingGroupID)
  {
    homeSharingGroupID2 = [actionCopy homeSharingGroupID];
    [v7 setObject:homeSharingGroupID2 forKeyedSubscript:@"TRDeviceSetupInfoKeyHomeSharingGroupID"];
  }

  v16 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(actionCopy, "isDiagnosticsEnabled")}];
  [v7 setObject:v16 forKeyedSubscript:@"TRDeviceSetupInfoKeyDiagnosticsEnabled"];

  v17 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(actionCopy, "rememberPassword")}];
  [v7 setObject:v17 forKeyedSubscript:@"TRDeviceSetupInfoKeyRememberPasswordEnabled"];

  delegate = [(TRDeviceSetupServer *)self delegate];
  v19 = objc_opt_respondsToSelector();

  if (v19)
  {
    delegate2 = [(TRDeviceSetupServer *)self delegate];
    v21 = [v7 copy];
    [delegate2 deviceSetupServer:self didReceiveSetupInfo:v21];
  }

  [(TRDeviceSetupServer *)self _finishSetupWithError:0 replyHandler:handlerCopy];
}

- (void)_finishWithAction:(id)action replyHandler:(id)handler
{
  actionCopy = action;
  handlerCopy = handler;
  v7 = handlerCopy;
  if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }

  self->_setupInProgress = 0;
  self->_cancelledSetupInProgress = 0;
  delegate = [(TRDeviceSetupServer *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    delegate2 = [(TRDeviceSetupServer *)self delegate];
    [delegate2 deviceSetupServerDidFinishSetup:self];
  }
}

- (void)_cancelWithAction:(id)action replyHandler:(id)handler
{
  actionCopy = action;
  handlerCopy = handler;
  v7 = handlerCopy;
  if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }

  self->_setupInProgress = 0;
  self->_cancelledSetupInProgress = 0;
  delegate = [(TRDeviceSetupServer *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    delegate2 = [(TRDeviceSetupServer *)self delegate];
    error = [actionCopy error];
    [delegate2 deviceSetupServer:self didFailSetupWithError:error];
  }
}

- (void)_finishSetupWithError:(id)error replyHandler:(id)handler
{
  v17 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  handlerCopy = handler;
  if (errorCopy)
  {
    if (_TRLogEnabled == 1)
    {
      v8 = TRLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 138412290;
        v16 = errorCopy;
        _os_log_impl(&dword_26F2A2000, v8, OS_LOG_TYPE_DEFAULT, "[TRDeviceSetupServer] Setup failed. Error: %@", &v15, 0xCu);
      }
    }

    v9 = [[TRDeviceSetupCancelAction alloc] initWithError:errorCopy];
    [(TRDeviceSetupServer *)self _sendAction:v9 sendDataHandler:handlerCopy shouldSendNilOnFailure:1 error:0];
    delegate = [(TRDeviceSetupServer *)self delegate];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      delegate2 = [(TRDeviceSetupServer *)self delegate];
      [delegate2 deviceSetupServer:self didFailSetupWithError:errorCopy];
    }
  }

  else
  {
    if (_TRLogEnabled == 1)
    {
      v13 = TRLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v15) = 0;
        _os_log_impl(&dword_26F2A2000, v13, OS_LOG_TYPE_DEFAULT, "[TRDeviceSetupServer] Setup is finished.", &v15, 2u);
      }
    }

    v9 = objc_alloc_init(TRDeviceSetupFinishAction);
    [(TRDeviceSetupServer *)self _sendAction:v9 sendDataHandler:handlerCopy shouldSendNilOnFailure:1 error:0];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (BOOL)_sendAction:(id)action sendDataHandler:(id)handler shouldSendNilOnFailure:(BOOL)failure error:(id *)error
{
  failureCopy = failure;
  v17 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (handlerCopy)
  {
    v10 = [action dataRepresentationWithError:error];
    v11 = v10 != 0;
    if (v10)
    {
      if (_TRLogEnabled == 1)
      {
        v12 = TRLogHandle();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v15 = 134217984;
          v16 = [v10 length];
          _os_log_impl(&dword_26F2A2000, v12, OS_LOG_TYPE_DEFAULT, "[TRDeviceSetupServer] Data to send length: %ld", &v15, 0xCu);
        }
      }

      handlerCopy[2](handlerCopy, v10);
    }

    else if (failureCopy)
    {
      handlerCopy[2](handlerCopy, 0);
    }
  }

  else
  {
    v11 = 1;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v11;
}

- (TRDeviceSetupServerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end