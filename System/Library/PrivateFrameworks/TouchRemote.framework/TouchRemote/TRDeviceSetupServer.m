@interface TRDeviceSetupServer
+ (void)initialize;
- (BOOL)_sendAction:(id)a3 sendDataHandler:(id)a4 shouldSendNilOnFailure:(BOOL)a5 error:(id *)a6;
- (TRDeviceSetupServer)init;
- (TRDeviceSetupServerDelegate)delegate;
- (void)_authenticateAccount:(unint64_t)a3 withAuthInfo:(id)a4 completion:(id)a5;
- (void)_authenticateWithAction:(id)a3 replyHandler:(id)a4;
- (void)_cancelTransferConnection;
- (void)_cancelWithAction:(id)a3 replyHandler:(id)a4;
- (void)_connectWithAction:(id)a3 replyHandler:(id)a4;
- (void)_finishSetupWithError:(id)a3 replyHandler:(id)a4;
- (void)_finishWithAction:(id)a3 replyHandler:(id)a4;
- (void)_requestAuthenticationForAccount:(unint64_t)a3 replyHandler:(id)a4;
- (void)_requestAuthenticationForNextAccountWithReplyHandler:(id)a3;
- (void)_requestAuthenticationFromPeripheralForAccount:(unint64_t)a3 lastAttemptAction:(id)a4 lastAttemptError:(id)a5 replyHandler:(id)a6;
- (void)_requestGeneralSetupWithReplyHandler:(id)a3;
- (void)_setUpWithAction:(id)a3 replyHandler:(id)a4;
- (void)cancelActiveSetup;
- (void)dealloc;
- (void)server:(id)a3 didFailToReceiveData:(id)a4;
- (void)server:(id)a3 didReceiveData:(id)a4 replyHandler:(id)a5;
- (void)serverWillReceiveData:(id)a3;
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

- (void)serverWillReceiveData:(id)a3
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

- (void)server:(id)a3 didReceiveData:(id)a4 replyHandler:(id)a5
{
  v25 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (_TRLogEnabled == 1)
  {
    v11 = TRLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v22 = [v9 length];
      _os_log_impl(&dword_26F2A2000, v11, OS_LOG_TYPE_DEFAULT, "[TRDeviceSetupServer] Server got data of length %li", buf, 0xCu);
    }
  }

  if (self->_cancelledSetupInProgress)
  {
    v12 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TRDeviceSetupErrorDomain" code:-8104 userInfo:0];
    [(TRDeviceSetupServer *)self _finishSetupWithError:v12 replyHandler:v10];
  }

  else
  {
    v20 = 0;
    v13 = [TRDeviceSetupAction actionWithData:v9 error:&v20 supportsLegacy:0];
    v12 = v20;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(TRDeviceSetupServer *)self _connectWithAction:v13 replyHandler:v10];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(TRDeviceSetupServer *)self _authenticateWithAction:v13 replyHandler:v10];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(TRDeviceSetupServer *)self _setUpWithAction:v13 replyHandler:v10];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [(TRDeviceSetupServer *)self _finishWithAction:v13 replyHandler:v10];
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [(TRDeviceSetupServer *)self _cancelWithAction:v13 replyHandler:v10];
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
              [(TRDeviceSetupServer *)self _finishSetupWithError:v15 replyHandler:v10];
              v16 = [(TRDeviceSetupServer *)self delegate];
              v17 = objc_opt_respondsToSelector();

              if (v17)
              {
                v18 = [(TRDeviceSetupServer *)self delegate];
                [v18 deviceSetupServer:self didFailSetupWithError:v15];
              }
            }
          }
        }
      }
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)server:(id)a3 didFailToReceiveData:(id)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (self->_setupInProgress)
  {
    v9 = MEMORY[0x277CCA9B8];
    if (v7)
    {
      v13 = *MEMORY[0x277CCA7E8];
      v14[0] = v7;
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

- (void)_connectWithAction:(id)a3 replyHandler:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (_TRLogEnabled == 1)
  {
    v8 = TRLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26F2A2000, v8, OS_LOG_TYPE_DEFAULT, "[TRDeviceSetupServer] Beginning the setup process.", buf, 2u);
    }
  }

  v9 = [(TRDeviceSetupServer *)self delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = [(TRDeviceSetupServer *)self delegate];
    v12 = [v6 deviceName];
    [v11 deviceSetupServer:self didBeginSetupWithDeviceName:v12];
  }

  if (_TRLogEnabled == 1)
  {
    v13 = TRLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [v6 networkSSID];
      *buf = 138412290;
      v24 = v14;
      _os_log_impl(&dword_26F2A2000, v13, OS_LOG_TYPE_DEFAULT, "[TRDeviceSetupServer] Asking delegate to connect to a network. Recommended network SSID = %@.", buf, 0xCu);
    }
  }

  objc_initWeak(buf, self);
  v15 = [(TRDeviceSetupServer *)self delegate];
  v16 = [v6 networkSSID];
  v17 = [v6 networkPassword];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __55__TRDeviceSetupServer__connectWithAction_replyHandler___block_invoke;
  v20[3] = &unk_279DCF110;
  objc_copyWeak(&v22, buf);
  v18 = v7;
  v21 = v18;
  [v15 deviceSetupServer:self connectToNetworkWithRecommendedSSID:v16 password:v17 completionHandler:v20];

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

- (void)_requestAuthenticationForNextAccountWithReplyHandler:(id)a3
{
  v13 = a3;
  v4 = [(TRDeviceSetupServer *)self accountsToAuthenticate];
  v5 = [v4 count];

  if (v5)
  {
    v6 = [(TRDeviceSetupServer *)self accountsToAuthenticate];
    v7 = [v6 firstObject];
    v8 = [v7 unsignedIntegerValue];

    v9 = [(TRDeviceSetupServer *)self accountsToAuthenticate];
    [v9 removeObjectAtIndex:0];
  }

  else
  {
    v8 = 0;
  }

  v10 = [(TRDeviceSetupServer *)self delegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = [(TRDeviceSetupServer *)self delegate];
    [v12 deviceSetupServer:self willRequestAuthenticationForAccount:v8];
  }

  [(TRDeviceSetupServer *)self _requestAuthenticationForAccount:v8 replyHandler:v13];
}

- (void)_requestAuthenticationForAccount:(unint64_t)a3 replyHandler:(id)a4
{
  v6 = a4;
  if (a3)
  {
    v7 = [(TRDeviceSetupServer *)self cachedAuthInfo];
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
    v9 = [v7 objectForKeyedSubscript:v8];

    objc_initWeak(&location, self);
    if (v9)
    {
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __69__TRDeviceSetupServer__requestAuthenticationForAccount_replyHandler___block_invoke;
      v10[3] = &unk_279DCF138;
      objc_copyWeak(v12, &location);
      v11 = v6;
      v12[1] = a3;
      [(TRDeviceSetupServer *)self _authenticateAccount:a3 withAuthInfo:v9 completion:v10];

      objc_destroyWeak(v12);
    }

    else
    {
      [(TRDeviceSetupServer *)self _requestAuthenticationFromPeripheralForAccount:a3 lastAttemptAction:0 lastAttemptError:0 replyHandler:v6];
    }

    objc_destroyWeak(&location);
  }

  else
  {
    [(TRDeviceSetupServer *)self _requestGeneralSetupWithReplyHandler:v6];
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

- (void)_requestAuthenticationFromPeripheralForAccount:(unint64_t)a3 lastAttemptAction:(id)a4 lastAttemptError:(id)a5 replyHandler:(id)a6
{
  v30 = *MEMORY[0x277D85DE8];
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [(TRDeviceSetupServer *)self delegate];
  v14 = objc_opt_respondsToSelector();

  if (v14)
  {
    v15 = [(TRDeviceSetupServer *)self delegate];
    v16 = [v15 deviceSetupServer:self localizedAuthenticationMessageForAccount:a3];

    if (!v11)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v16 = 0;
    if (!v11)
    {
      goto LABEL_7;
    }
  }

  v17 = [v11 domain];
  v18 = [v17 isEqualToString:@"TRDeviceSetupErrorDomain"];

  if (v18)
  {
    v19 = [v11 localizedDescription];
    goto LABEL_8;
  }

LABEL_7:
  v19 = 0;
LABEL_8:
  if (v10)
  {
    [TRDeviceSetupAuthenticateAction actionForFailedAttemptWithOriginalAction:v10 requestMessage:v16 failureMessage:v19];
  }

  else
  {
    [TRDeviceSetupAuthenticateAction actionForInitialAttemptWithAccountType:a3 requestMessage:v16];
  }
  v20 = ;
  v25 = 0;
  v21 = [(TRDeviceSetupServer *)self _sendAction:v20 sendDataHandler:v12 shouldSendNilOnFailure:0 error:&v25];
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

    [(TRDeviceSetupServer *)self _requestGeneralSetupWithReplyHandler:v12];
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)_authenticateAccount:(unint64_t)a3 withAuthInfo:(id)a4 completion:(id)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v10 = [v8 objectForKeyedSubscript:@"TRDeviceSetupAuthenticationKeyAccountID"];
  v11 = [v8 objectForKeyedSubscript:@"TRDeviceSetupAuthenticationKeyAccountPassword"];
  if (a3 && [v10 length] && objc_msgSend(v11, "length") && (-[TRDeviceSetupServer delegate](self, "delegate"), v12 = objc_claimAutoreleasedReturnValue(), v12, v12))
  {
    if (_TRLogEnabled == 1)
    {
      v13 = TRLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = TRStringFromSetupAccountType(a3);
        *buf = 138412290;
        v25 = v14;
        _os_log_impl(&dword_26F2A2000, v13, OS_LOG_TYPE_DEFAULT, "[TRDeviceSetupServer] Asking delegate to authenticate account %@.", buf, 0xCu);
      }
    }

    v15 = [(TRDeviceSetupServer *)self delegate];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __68__TRDeviceSetupServer__authenticateAccount_withAuthInfo_completion___block_invoke;
    v21[3] = &unk_279DCF160;
    v23 = a3;
    v22 = v9;
    [v15 deviceSetupServer:self authenticateAccount:a3 withInfo:v8 completionHandler:v21];
  }

  else
  {
    if (_TRLogEnabled == 1)
    {
      v16 = TRLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = TRStringFromSetupAccountType(a3);
        v18 = [(TRDeviceSetupServer *)self delegate];
        v19 = &stru_287F58968;
        if (!v18)
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

    if (v9)
    {
      (*(v9 + 2))(v9, 2, 0);
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

- (void)_authenticateWithAction:(id)a3 replyHandler:(id)a4
{
  v28[3] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v27[0] = @"TRDeviceSetupAuthenticationKeyAccountID";
  v8 = [v6 accountID];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = &stru_287F58968;
  }

  v28[0] = v10;
  v27[1] = @"TRDeviceSetupAuthenticationKeyAccountPassword";
  v11 = [v6 accountPassword];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = &stru_287F58968;
  }

  v28[1] = v13;
  v27[2] = @"TRDeviceSetupAuthenticationKeyAttemptCount";
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v6, "attemptCount")}];
  v28[2] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:3];

  objc_initWeak(&location, self);
  v16 = [v6 accountType];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __60__TRDeviceSetupServer__authenticateWithAction_replyHandler___block_invoke;
  v21[3] = &unk_279DCF188;
  v17 = v6;
  v22 = v17;
  objc_copyWeak(&v25, &location);
  v18 = v15;
  v23 = v18;
  v19 = v7;
  v24 = v19;
  [(TRDeviceSetupServer *)self _authenticateAccount:v16 withAuthInfo:v18 completion:v21];

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

- (void)_requestGeneralSetupWithReplyHandler:(id)a3
{
  v4 = a3;
  [(TRDeviceSetupServer *)self setAccountsToAuthenticate:0];
  v5 = objc_alloc_init(TRDeviceSetupGeneralSetupAction);
  [(TRDeviceSetupServer *)self _sendAction:v5 sendDataHandler:v4 shouldSendNilOnFailure:1 error:0];
}

- (void)_setUpWithAction:(id)a3 replyHandler:(id)a4
{
  v22 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v8 = [v22 countryCode];

  if (v8)
  {
    v9 = [v22 countryCode];
    [v7 setObject:v9 forKeyedSubscript:@"TRDeviceSetupInfoKeyCountryCode"];
  }

  v10 = [v22 language];

  if (v10)
  {
    v11 = [v22 language];
    [v7 setObject:v11 forKeyedSubscript:@"TRDeviceSetupInfoKeyLanguage"];
  }

  v12 = [v22 homeSharingID];

  if (v12)
  {
    v13 = [v22 homeSharingID];
    [v7 setObject:v13 forKeyedSubscript:@"TRDeviceSetupInfoKeyHomeSharingAppleID"];
  }

  v14 = [v22 homeSharingGroupID];

  if (v14)
  {
    v15 = [v22 homeSharingGroupID];
    [v7 setObject:v15 forKeyedSubscript:@"TRDeviceSetupInfoKeyHomeSharingGroupID"];
  }

  v16 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v22, "isDiagnosticsEnabled")}];
  [v7 setObject:v16 forKeyedSubscript:@"TRDeviceSetupInfoKeyDiagnosticsEnabled"];

  v17 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v22, "rememberPassword")}];
  [v7 setObject:v17 forKeyedSubscript:@"TRDeviceSetupInfoKeyRememberPasswordEnabled"];

  v18 = [(TRDeviceSetupServer *)self delegate];
  v19 = objc_opt_respondsToSelector();

  if (v19)
  {
    v20 = [(TRDeviceSetupServer *)self delegate];
    v21 = [v7 copy];
    [v20 deviceSetupServer:self didReceiveSetupInfo:v21];
  }

  [(TRDeviceSetupServer *)self _finishSetupWithError:0 replyHandler:v6];
}

- (void)_finishWithAction:(id)a3 replyHandler:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    (*(v6 + 2))(v6, 0);
  }

  self->_setupInProgress = 0;
  self->_cancelledSetupInProgress = 0;
  v8 = [(TRDeviceSetupServer *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(TRDeviceSetupServer *)self delegate];
    [v10 deviceSetupServerDidFinishSetup:self];
  }
}

- (void)_cancelWithAction:(id)a3 replyHandler:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    (*(v6 + 2))(v6, 0);
  }

  self->_setupInProgress = 0;
  self->_cancelledSetupInProgress = 0;
  v8 = [(TRDeviceSetupServer *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(TRDeviceSetupServer *)self delegate];
    v11 = [v12 error];
    [v10 deviceSetupServer:self didFailSetupWithError:v11];
  }
}

- (void)_finishSetupWithError:(id)a3 replyHandler:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    if (_TRLogEnabled == 1)
    {
      v8 = TRLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 138412290;
        v16 = v6;
        _os_log_impl(&dword_26F2A2000, v8, OS_LOG_TYPE_DEFAULT, "[TRDeviceSetupServer] Setup failed. Error: %@", &v15, 0xCu);
      }
    }

    v9 = [[TRDeviceSetupCancelAction alloc] initWithError:v6];
    [(TRDeviceSetupServer *)self _sendAction:v9 sendDataHandler:v7 shouldSendNilOnFailure:1 error:0];
    v10 = [(TRDeviceSetupServer *)self delegate];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      v12 = [(TRDeviceSetupServer *)self delegate];
      [v12 deviceSetupServer:self didFailSetupWithError:v6];
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
    [(TRDeviceSetupServer *)self _sendAction:v9 sendDataHandler:v7 shouldSendNilOnFailure:1 error:0];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (BOOL)_sendAction:(id)a3 sendDataHandler:(id)a4 shouldSendNilOnFailure:(BOOL)a5 error:(id *)a6
{
  v7 = a5;
  v17 = *MEMORY[0x277D85DE8];
  v9 = a4;
  if (v9)
  {
    v10 = [a3 dataRepresentationWithError:a6];
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

      v9[2](v9, v10);
    }

    else if (v7)
    {
      v9[2](v9, 0);
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