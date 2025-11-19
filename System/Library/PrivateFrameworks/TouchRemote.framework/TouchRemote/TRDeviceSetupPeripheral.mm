@interface TRDeviceSetupPeripheral
- (BOOL)_sendAction:(id)a3 sendDataHandler:(id)a4 error:(id *)a5;
- (BOOL)performSetupAndReturnError:(id *)a3;
- (TRDeviceSetupPeripheral)init;
- (TRDeviceSetupPeripheralDelegate)delegate;
- (void)_authenticateWithAction:(id)a3 replyHandler:(id)a4;
- (void)_cancelAuthenticationWithReceivedAction:(id)a3 replyHandler:(id)a4;
- (void)_cancelSetupWithAction:(id)a3 replyHandler:(id)a4;
- (void)_didDisconnect;
- (void)_didReceiveData:(id)a3 replyHandler:(id)a4;
- (void)_didTapWithSendDataHandler:(id)a3;
- (void)_finishSetupWithAction:(id)a3 replyHandler:(id)a4;
- (void)_legacyAuthenticateWithAction:(id)a3 attemptCount:(unint64_t)a4 replyHandler:(id)a5;
- (void)_legacyAuthenticateWithUserAgent:(id)a3 deviceGUID:(id)a4 accountID:(id)a5 password:(id)a6 attemptCount:(unint64_t)a7 completion:(id)a8;
- (void)_setUpWithAction:(id)a3 replyHandler:(id)a4;
- (void)_setupDidFailWithError:(id)a3 replyHandler:(id)a4;
- (void)_startAuthenticationWithReceivedAction:(id)a3 replyHandler:(id)a4;
- (void)cancelPreparingForSetup;
- (void)cancelSetupForStateChange;
- (void)cancelSetupForTimeout;
@end

@implementation TRDeviceSetupPeripheral

- (TRDeviceSetupPeripheral)init
{
  v6.receiver = self;
  v6.super_class = TRDeviceSetupPeripheral;
  v2 = [(TRDeviceSetupPeripheral *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.TouchRemote.TRDeviceSetupPeripheral", 0);
    queue = v2->_queue;
    v2->_queue = v3;
  }

  return v2;
}

- (BOOL)performSetupAndReturnError:(id *)a3
{
  if (self->_preparingForSetup)
  {
    if (self->_performingSetup)
    {
      return 1;
    }

    *buf = 0;
    v28 = buf;
    v29 = 0x2020000000;
    v30 = 0;
    v7 = +[TRUserNotificationManager sharedInstance];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __54__TRDeviceSetupPeripheral_performSetupAndReturnError___block_invoke;
    v26[3] = &unk_279DCF808;
    v26[4] = buf;
    [v7 requestPermissionToInitiateSetupWithCompletion:v26];

    if (v28[24] == 1)
    {
      v25 = 0;
      v23 = 0;
      v24 = 0;
      Config = TRCanPerformSetupGetConfig(&v25, &v24, &v23);
      v9 = v24;
      v10 = v23;
      if (Config)
      {
        v11 = +[TRAccountsManager sharedInstance];
        v12 = [v11 deviceName];

        v13 = [(TRDeviceSetupConnectAction *)[TRDeviceSetupLegacyAuthenticationAction alloc] initWithDeviceName:v12 networkSSID:v9 networkPassword:v10];
        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 3221225472;
        v19[2] = __54__TRDeviceSetupPeripheral_performSetupAndReturnError___block_invoke_2;
        v19[3] = &unk_279DCF850;
        v19[4] = self;
        v14 = MEMORY[0x27438C490](v19);
        v18 = 0;
        [(TRDeviceSetupPeripheral *)self _sendAction:v13 sendDataHandler:v14 error:&v18];
      }

      else
      {
        if (_TRLogEnabled == 1)
        {
          v16 = TRLogHandle();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            *v22 = 0;
            _os_log_impl(&dword_26F2A2000, v16, OS_LOG_TYPE_DEFAULT, "[TRDeviceSetupPeripheral] Unable to perform setup, requirements not met.", v22, 2u);
          }
        }

        v17 = dispatch_get_global_queue(0, 0);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __54__TRDeviceSetupPeripheral_performSetupAndReturnError___block_invoke_93;
        block[3] = &__block_descriptor_33_e5_v8__0l;
        v21 = v25;
        dispatch_async(v17, block);

        [(TRDeviceSetupPeripheral *)self cancelPreparingForSetup];
        if (a3)
        {
          *a3 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TRDeviceSetupErrorDomain" code:-8108 userInfo:0];
        }
      }

      _Block_object_dispose(buf, 8);
      if (Config)
      {
        return 1;
      }
    }

    else
    {
      if (_TRLogEnabled == 1)
      {
        v15 = TRLogHandle();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *v22 = 0;
          _os_log_impl(&dword_26F2A2000, v15, OS_LOG_TYPE_DEFAULT, "[TRDeviceSetupPeripheral] Unable to perform setup, user did not give permission", v22, 2u);
        }
      }

      [(TRDeviceSetupPeripheral *)self cancelPreparingForSetup];
      _Block_object_dispose(buf, 8);
    }
  }

  else if (_TRLogEnabled == 1)
  {
    v5 = TRLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26F2A2000, v5, OS_LOG_TYPE_DEFAULT, "[TRDeviceSetupPeripheral] -performSetup called before a tap was received, ignoring.", buf, 2u);
    }
  }

  return 0;
}

void __54__TRDeviceSetupPeripheral_performSetupAndReturnError___block_invoke_93(uint64_t a1)
{
  v2 = +[TRUserNotificationManager sharedInstance];
  [v2 presentWiFiNetworkConnectionError:*(a1 + 32) completion:0];
}

void __54__TRDeviceSetupPeripheral_performSetupAndReturnError___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (*(v4 + 9) == 1)
  {
    v6 = v3;
    *(v4 + 9) = 0;
    v5 = [*(a1 + 32) pendingSendDataHandler];
    [*(a1 + 32) setPendingSendDataHandler:0];
    if (v5)
    {
      (v5)[2](v5, v6);
    }

    *(*(a1 + 32) + 8) = 1;

    v3 = v6;
  }
}

- (void)cancelPreparingForSetup
{
  if (self->_preparingForSetup)
  {
    self->_preparingForSetup = 0;
    v5 = [(TRDeviceSetupPeripheral *)self pendingSendDataHandler];
    [(TRDeviceSetupPeripheral *)self setPendingSendDataHandler:0];
    v4 = v5;
    if (v5)
    {
      (*(v5 + 16))(v5, 0);
      v4 = v5;
    }
  }
}

- (void)cancelSetupForStateChange
{
  if (self->_performingSetup)
  {
    v5 = [(TRDeviceSetupPeripheral *)self pendingSendDataHandler];
    [(TRDeviceSetupPeripheral *)self setPendingSendDataHandler:0];
    v4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TRDeviceSetupErrorDomain" code:-8105 userInfo:0];
    [(TRDeviceSetupPeripheral *)self _setupDidFailWithError:v4 replyHandler:v5];
  }
}

- (void)cancelSetupForTimeout
{
  if (self->_performingSetup)
  {
    v5 = [(TRDeviceSetupPeripheral *)self pendingSendDataHandler];
    [(TRDeviceSetupPeripheral *)self setPendingSendDataHandler:0];
    v4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TRDeviceSetupErrorDomain" code:-8106 userInfo:0];
    [(TRDeviceSetupPeripheral *)self _setupDidFailWithError:v4 replyHandler:v5];
  }
}

- (void)_didDisconnect
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__TRDeviceSetupPeripheral__didDisconnect__block_invoke;
  block[3] = &unk_279DCEBF8;
  block[4] = self;
  dispatch_async(queue, block);
}

void __41__TRDeviceSetupPeripheral__didDisconnect__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[8] == 1)
  {
    v4 = [v2 pendingSendDataHandler];
    [*(a1 + 32) setPendingSendDataHandler:0];
    v3 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TRDeviceSetupErrorDomain" code:-8104 userInfo:0];
    [*(a1 + 32) _setupDidFailWithError:v3 replyHandler:v4];
  }
}

- (void)_didReceiveData:(id)a3 replyHandler:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v15 = 0;
  v7 = [TRDeviceSetupAction actionWithData:a3 error:&v15 supportsLegacy:1];
  v8 = v15;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(TRDeviceSetupPeripheral *)self _authenticateWithAction:v7 replyHandler:v6];
    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(TRDeviceSetupPeripheral *)self _setUpWithAction:v7 replyHandler:v6];
    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(TRDeviceSetupPeripheral *)self _legacyAuthenticateWithAction:v7 attemptCount:0 replyHandler:v6];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
LABEL_8:
      [(TRDeviceSetupPeripheral *)self _cancelSetupWithAction:v7 replyHandler:v6];
      goto LABEL_11;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
LABEL_6:
      [(TRDeviceSetupPeripheral *)self _finishSetupWithAction:v7 replyHandler:v6];
      goto LABEL_11;
    }

    if (_TRLogEnabled == 1)
    {
      v11 = TRLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v19 = v7;
        v20 = 2112;
        v21 = v8;
        _os_log_impl(&dword_26F2A2000, v11, OS_LOG_TYPE_DEFAULT, "[TRDeviceSetupPeripheral] Failed to handle action: %@. Error: %@", buf, 0x16u);
      }
    }

    v12 = MEMORY[0x277CCA9B8];
    v16 = *MEMORY[0x277CCA7E8];
    v17 = v8;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v14 = [v12 errorWithDomain:@"TRDeviceSetupErrorDomain" code:-8100 userInfo:v13];

    [(TRDeviceSetupPeripheral *)self _setupDidFailWithError:v14 replyHandler:v6];
  }

LABEL_11:
  if (_TRLogEnabled == 1)
  {
    v9 = TRLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26F2A2000, v9, OS_LOG_TYPE_DEFAULT, "[TRDeviceSetupPeripheral] Waiting for data to send...", buf, 2u);
    }
  }

  [(TRDeviceSetupPeripheral *)self setPendingSendDataHandler:v6];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_didTapWithSendDataHandler:(id)a3
{
  v4 = a3;
  self->_preparingForSetup = 1;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__TRDeviceSetupPeripheral__didTapWithSendDataHandler___block_invoke;
  block[3] = &unk_279DCEBF8;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
  if (_TRLogEnabled == 1)
  {
    v5 = TRLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_26F2A2000, v5, OS_LOG_TYPE_DEFAULT, "[TRDeviceSetupPeripheral] Waiting for data to send...", v6, 2u);
    }
  }

  [(TRDeviceSetupPeripheral *)self setPendingSendDataHandler:v4];
}

void __54__TRDeviceSetupPeripheral__didTapWithSendDataHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    if (_TRLogEnabled == 1)
    {
      v4 = TRLogHandle();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *v6 = 0;
        _os_log_impl(&dword_26F2A2000, v4, OS_LOG_TYPE_DEFAULT, "[TRDeviceSetupPeripheral] Got tap.", v6, 2u);
      }
    }

    v5 = objc_loadWeakRetained((*(a1 + 32) + 24));
    [v5 deviceSetupPeripheralDidTap:*(a1 + 32)];
  }
}

- (void)_legacyAuthenticateWithAction:(id)a3 attemptCount:(unint64_t)a4 replyHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = +[TRUserNotificationManager sharedInstance];
  v11 = +[TRAccountsManager sharedInstance];
  v12 = [v11 defaultAccountIDForAuthenticationAccountType:1];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __83__TRDeviceSetupPeripheral__legacyAuthenticateWithAction_attemptCount_replyHandler___block_invoke;
  v15[3] = &unk_279DCF8F0;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = a4;
  v13 = v9;
  v14 = v8;
  [v10 requestLegacyAuthenticationWithAccountID:v12 completion:v15];
}

void __83__TRDeviceSetupPeripheral__legacyAuthenticateWithAction_attemptCount_replyHandler___block_invoke(uint64_t a1, int a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if (!a2)
  {
    goto LABEL_6;
  }

  if (![v7 length] || !objc_msgSend(v8, "length"))
  {
    [*(a1 + 32) _legacyAuthenticateWithAction:*(a1 + 40) attemptCount:*(a1 + 56) replyHandler:*(a1 + 48)];
    goto LABEL_8;
  }

  if ([v8 length])
  {
    objc_initWeak(&location, *(a1 + 32));
    v9 = *(a1 + 32);
    v10 = [*(a1 + 40) userAgent];
    v11 = [*(a1 + 40) deviceGUID];
    v12 = *(a1 + 56);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __83__TRDeviceSetupPeripheral__legacyAuthenticateWithAction_attemptCount_replyHandler___block_invoke_2;
    v17[3] = &unk_279DCF8C8;
    objc_copyWeak(v20, &location);
    v19 = *(a1 + 48);
    v13 = *(a1 + 40);
    v14 = *(a1 + 56);
    v18 = v13;
    v20[1] = v14;
    [v9 _legacyAuthenticateWithUserAgent:v10 deviceGUID:v11 accountID:v7 password:v8 attemptCount:v12 completion:v17];

    objc_destroyWeak(v20);
    objc_destroyWeak(&location);
  }

  else
  {
LABEL_6:
    v15 = *(a1 + 32);
    v16 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TRDeviceSetupErrorDomain" code:-8102 userInfo:0];
    [v15 _setupDidFailWithError:v16 replyHandler:*(a1 + 48)];
  }

LABEL_8:
}

void __83__TRDeviceSetupPeripheral__legacyAuthenticateWithAction_attemptCount_replyHandler___block_invoke_2(uint64_t a1, void *a2, int a3)
{
  v25[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    if (a3)
    {
      v8 = *(a1 + 40);
      v23 = 0;
      v9 = [WeakRetained _sendAction:v5 sendDataHandler:v8 error:&v23];
      v10 = v23;
      v11 = v10;
      if ((v9 & 1) == 0)
      {
        v12 = MEMORY[0x277CCA9B8];
        v24 = *MEMORY[0x277CCA7E8];
        v25[0] = v10;
        v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
        v14 = [v12 errorWithDomain:@"TRDeviceSetupErrorDomain" code:-8100 userInfo:v13];

        [v7 _setupDidFailWithError:v14 replyHandler:*(a1 + 40)];
        v11 = v14;
      }
    }

    else
    {
      v15 = +[TRUserNotificationManager sharedInstance];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __83__TRDeviceSetupPeripheral__legacyAuthenticateWithAction_attemptCount_replyHandler___block_invoke_3;
      v19[3] = &unk_279DCF8A0;
      v19[4] = v7;
      v16 = *(a1 + 32);
      v17 = *(a1 + 56);
      v20 = v16;
      v22 = v17;
      v21 = *(a1 + 40);
      [v15 presentLegacyAuthenticationFailedDialogWithMessage:0 completion:v19];
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __83__TRDeviceSetupPeripheral__legacyAuthenticateWithAction_attemptCount_replyHandler___block_invoke_3(void *a1, int a2)
{
  if (a2)
  {
    v3 = dispatch_time(0, 500000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __83__TRDeviceSetupPeripheral__legacyAuthenticateWithAction_attemptCount_replyHandler___block_invoke_4;
    block[3] = &unk_279DCF878;
    v4 = a1[5];
    block[4] = a1[4];
    v5 = v4;
    v7 = a1[6];
    v6 = a1[7];
    v11 = v5;
    v13 = v6;
    v12 = v7;
    dispatch_after(v3, MEMORY[0x277D85CD0], block);
  }

  else
  {
    v8 = a1[4];
    v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TRDeviceSetupErrorDomain" code:-8102 userInfo:0];
    [v8 _setupDidFailWithError:v9 replyHandler:a1[6]];
  }
}

void *__83__TRDeviceSetupPeripheral__legacyAuthenticateWithAction_attemptCount_replyHandler___block_invoke_4(void *a1)
{
  result = a1[4];
  if (result)
  {
    return [result _legacyAuthenticateWithAction:a1[5] attemptCount:a1[7] + 1 replyHandler:a1[6]];
  }

  return result;
}

- (void)_authenticateWithAction:(id)a3 replyHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 attemptCount])
  {
    v8 = +[TRUserNotificationManager sharedInstance];
    v9 = [v6 failureMessage];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __64__TRDeviceSetupPeripheral__authenticateWithAction_replyHandler___block_invoke;
    v10[3] = &unk_279DCF918;
    v10[4] = self;
    v11 = v6;
    v12 = v7;
    [v8 presentAuthenticationFailureWithMessage:v9 completion:v10];
  }

  else
  {
    [(TRDeviceSetupPeripheral *)self _startAuthenticationWithReceivedAction:v6 replyHandler:v7];
  }
}

uint64_t __64__TRDeviceSetupPeripheral__authenticateWithAction_replyHandler___block_invoke(void *a1, int a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  if (a2)
  {
    return [v3 _startAuthenticationWithReceivedAction:v4 replyHandler:v5];
  }

  else
  {
    return [v3 _cancelAuthenticationWithReceivedAction:v4 replyHandler:v5];
  }
}

- (void)_startAuthenticationWithReceivedAction:(id)a3 replyHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[TRAccountsManager sharedInstance];
  v9 = [v8 defaultAccountIDForAuthenticationAccountType:{objc_msgSend(v6, "accountType")}];

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __79__TRDeviceSetupPeripheral__startAuthenticationWithReceivedAction_replyHandler___block_invoke;
  v20[3] = &unk_279DCF940;
  v10 = v6;
  v21 = v10;
  v22 = self;
  v11 = v7;
  v23 = v11;
  v12 = MEMORY[0x27438C490](v20);
  if ([v10 accountType] == 2)
  {
    v13 = +[TRAccountsManager sharedInstance];
    v14 = [v13 defaultAccountIDForAuthenticationAccountType:1];
    if ([v9 length] && (objc_msgSend(v9, "lowercaseString"), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "lowercaseString"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v15, "isEqualToString:", v16), v16, v15, v17))
    {
      v18 = +[TRUserNotificationManager sharedInstance];
      [v18 requestAppleIDAuthenticationWithAccountID:v9 completion:v12];
    }

    else
    {
      v18 = +[TRUserNotificationManager sharedInstance];
      v19 = [v10 requestMessage];
      [v18 requestAuthenticationWithAccountID:v9 message:v19 completion:v12];
    }
  }

  else
  {
    v13 = +[TRUserNotificationManager sharedInstance];
    v14 = [v10 requestMessage];
    [v13 requestAuthenticationWithAccountID:v9 message:v14 completion:v12];
  }
}

void __79__TRDeviceSetupPeripheral__startAuthenticationWithReceivedAction_replyHandler___block_invoke(uint64_t a1, int a2, void *a3, void *a4, _BYTE *a5)
{
  v25[1] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  if (a2)
  {
    if ([v9 length] && objc_msgSend(v10, "length"))
    {
      if ([*(a1 + 32) accountType] == 1)
      {
        [*(a1 + 40) setAuthenticatediTunesStoreID:v9];
      }

      v11 = +[TRAccountsManager sharedInstance];
      v12 = [v11 accountTypesWithDefaultAccountID:v9];

      v13 = [TRDeviceSetupAuthenticateAction actionForFinishedRequestWithOriginalAction:*(a1 + 32) accountID:v9 accountPassword:v10 accountTypesWithSharedCredentials:v12];
      v14 = *(a1 + 40);
      v15 = *(a1 + 48);
      v23 = 0;
      v16 = [v14 _sendAction:v13 sendDataHandler:v15 error:&v23];
      v17 = v23;
      v18 = v17;
      if ((v16 & 1) == 0)
      {
        v19 = MEMORY[0x277CCA9B8];
        v24 = *MEMORY[0x277CCA7E8];
        v25[0] = v17;
        v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
        v21 = [v19 errorWithDomain:@"TRDeviceSetupErrorDomain" code:-8100 userInfo:v20];

        [*(a1 + 40) _setupDidFailWithError:v21 replyHandler:*(a1 + 48)];
        v18 = v21;
      }
    }

    else
    {
      *a5 = 1;
    }
  }

  else
  {
    [*(a1 + 40) _cancelAuthenticationWithReceivedAction:*(a1 + 32) replyHandler:*(a1 + 48)];
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)_cancelAuthenticationWithReceivedAction:(id)a3 replyHandler:(id)a4
{
  v17[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [TRDeviceSetupAuthenticateAction actionForCancelledRequestWithOriginalAction:a3];
  v15 = 0;
  v8 = [(TRDeviceSetupPeripheral *)self _sendAction:v7 sendDataHandler:v6 error:&v15];
  v9 = v15;
  v10 = v9;
  if (!v8)
  {
    v11 = MEMORY[0x277CCA9B8];
    v16 = *MEMORY[0x277CCA7E8];
    v17[0] = v9;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v13 = [v11 errorWithDomain:@"TRDeviceSetupErrorDomain" code:-8100 userInfo:v12];
    [(TRDeviceSetupPeripheral *)self _setupDidFailWithError:v13 replyHandler:v6];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_setUpWithAction:(id)a3 replyHandler:(id)a4
{
  v28[1] = *MEMORY[0x277D85DE8];
  v4 = a4;
  v5 = [TRDeviceSetupGeneralSetupAction alloc];
  v6 = [MEMORY[0x277CBEAF8] preferredLanguages];
  v7 = [v6 count];
  v25 = v4;
  if (v7)
  {
    v23 = [MEMORY[0x277CBEAF8] preferredLanguages];
    v8 = [v23 firstObject];
  }

  else
  {
    v8 = 0;
  }

  v9 = [MEMORY[0x277CBEAF8] currentLocale];
  v10 = [v9 objectForKey:*MEMORY[0x277CBE690]];
  v11 = +[TRAccountsManager sharedInstance];
  v12 = [v11 homeSharingAppleID];
  v13 = +[TRAccountsManager sharedInstance];
  v14 = [v13 homeSharingGroupID];
  v15 = [(TRDeviceSetupGeneralSetupAction *)v5 initWithCountryCode:v8 language:v10 homeSharingID:v12 homeSharingGroupID:v14 isDiagnosticsEnabled:0 rememberPassword:0];

  if (v7)
  {
  }

  v26 = 0;
  v16 = [(TRDeviceSetupPeripheral *)self _sendAction:v15 sendDataHandler:v25 error:&v26];
  v17 = v26;
  v18 = v17;
  if (!v16)
  {
    v19 = MEMORY[0x277CCA9B8];
    v27 = *MEMORY[0x277CCA7E8];
    v28[0] = v17;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:&v27 count:1];
    v21 = [v19 errorWithDomain:@"TRDeviceSetupErrorDomain" code:-8100 userInfo:v20];

    [(TRDeviceSetupPeripheral *)self _setupDidFailWithError:v21 replyHandler:v25];
    v18 = v21;
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)_finishSetupWithAction:(id)a3 replyHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__TRDeviceSetupPeripheral__finishSetupWithAction_replyHandler___block_invoke;
  block[3] = &unk_279DCF7A0;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

void __63__TRDeviceSetupPeripheral__finishSetupWithAction_replyHandler___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  if (*(v3 + 8) == 1)
  {
    block[7] = v1;
    block[8] = v2;
    *(v3 + 8) = 0;
    [*(a1 + 32) _sendAction:*(a1 + 40) sendDataHandler:*(a1 + 48) error:0];
    v5 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __63__TRDeviceSetupPeripheral__finishSetupWithAction_replyHandler___block_invoke_2;
    block[3] = &unk_279DCEBF8;
    block[4] = *(a1 + 32);
    dispatch_async(v5, block);
  }
}

void __63__TRDeviceSetupPeripheral__finishSetupWithAction_replyHandler___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = objc_loadWeakRetained((*(a1 + 32) + 24));
    [v4 deviceSetupPeripheralSetupDidComplete:*(a1 + 32)];
  }
}

- (void)_cancelSetupWithAction:(id)a3 replyHandler:(id)a4
{
  v5 = MEMORY[0x277CCA9B8];
  v6 = a4;
  v7 = [v5 errorWithDomain:@"TRDeviceSetupErrorDomain" code:-8104 userInfo:0];
  [(TRDeviceSetupPeripheral *)self _setupDidFailWithError:v7 replyHandler:v6];
}

- (void)_setupDidFailWithError:(id)a3 replyHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__TRDeviceSetupPeripheral__setupDidFailWithError_replyHandler___block_invoke;
  block[3] = &unk_279DCF968;
  v12 = v6;
  v13 = v7;
  block[4] = self;
  v9 = v6;
  v10 = v7;
  dispatch_async(queue, block);
}

void __63__TRDeviceSetupPeripheral__setupDidFailWithError_replyHandler___block_invoke(uint64_t a1)
{
  v2 = +[TRUserNotificationManager sharedInstance];
  [v2 cancel];

  v3 = *(a1 + 32);
  if (*(v3 + 8) == 1)
  {
    *(v3 + 8) = 0;
    v4 = objc_alloc_init(TRDeviceSetupCancelAction);
    [*(a1 + 32) _sendAction:v4 sendDataHandler:*(a1 + 48) error:0];
    v5 = dispatch_get_global_queue(0, 0);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __63__TRDeviceSetupPeripheral__setupDidFailWithError_replyHandler___block_invoke_2;
    v7[3] = &unk_279DCEC20;
    v6 = *(a1 + 40);
    v7[4] = *(a1 + 32);
    v8 = v6;
    dispatch_async(v5, v7);
  }
}

void __63__TRDeviceSetupPeripheral__setupDidFailWithError_replyHandler___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = objc_loadWeakRetained((*(a1 + 32) + 24));
    [v4 deviceSetupPeripheralSetupDidFail:*(a1 + 32) withError:*(a1 + 40)];
  }
}

- (BOOL)_sendAction:(id)a3 sendDataHandler:(id)a4 error:(id *)a5
{
  v15 = *MEMORY[0x277D85DE8];
  v7 = a4;
  if (v7)
  {
    v8 = [a3 dataRepresentationWithError:a5];
    v9 = v8 != 0;
    if (v8)
    {
      if (_TRLogEnabled == 1)
      {
        v10 = TRLogHandle();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v13 = 134217984;
          v14 = [v8 length];
          _os_log_impl(&dword_26F2A2000, v10, OS_LOG_TYPE_DEFAULT, "[TRDeviceSetupPeripheral] Data to send length: %ld", &v13, 0xCu);
        }
      }

      v7[2](v7, v8);
    }
  }

  else
  {
    v9 = 1;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)_legacyAuthenticateWithUserAgent:(id)a3 deviceGUID:(id)a4 accountID:(id)a5 password:(id)a6 attemptCount:(unint64_t)a7 completion:(id)a8
{
  v30[6] = *MEMORY[0x277D85DE8];
  v13 = a6;
  v14 = a8;
  v15 = MEMORY[0x277D69BD0];
  v16 = a5;
  v17 = a4;
  v18 = a3;
  v19 = objc_alloc_init(v15);
  [v19 setURLBagKey:@"authenticateAccount"];
  [v19 setHTTPMethod:@"POST"];
  [v19 setValue:v18 forHTTPHeaderField:*MEMORY[0x277D6A130]];

  [v19 setValue:@"application/x-apple-plist" forHTTPHeaderField:@"Content-Type"];
  v29[0] = @"appleId";
  v29[1] = @"password";
  v30[0] = v16;
  v30[1] = v13;
  v29[2] = @"guid";
  v29[3] = @"why";
  v30[2] = v17;
  v30[3] = @"purchase";
  v30[4] = @"0";
  v29[4] = @"rmp";
  v29[5] = @"attempt";
  v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", a7];
  v30[5] = v20;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:6];
  [v19 setRequestParameters:v21];

  [v19 setITunesStoreRequest:1];
  [v19 setShouldProcessProtocol:0];
  [v19 setShouldSetCookies:0];
  v22 = [objc_alloc(MEMORY[0x277D69C98]) initWithRequestProperties:v19];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __114__TRDeviceSetupPeripheral__legacyAuthenticateWithUserAgent_deviceGUID_accountID_password_attemptCount_completion___block_invoke;
  v26[3] = &unk_279DCF990;
  v27 = v13;
  v28 = v14;
  v23 = v14;
  v24 = v13;
  [v22 startWithConnectionResponseBlock:v26];

  v25 = *MEMORY[0x277D85DE8];
}

void __114__TRDeviceSetupPeripheral__legacyAuthenticateWithUserAgent_deviceGUID_accountID_password_attemptCount_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v30 = a3;
  if ([v5 statusCode] == 200)
  {
    v28 = [v5 allHeaderFields];
    v27 = [v5 bodyData];
    if (v27)
    {
      v6 = [MEMORY[0x277CCAC58] propertyListWithData:v27 options:0 format:0 error:0];
    }

    else
    {
      v6 = 0;
    }

    v29 = [v6 objectForKey:@"failureType"];
    if ((objc_opt_respondsToSelector() & 1) != 0 && [v29 intValue])
    {
      if (_TRLogEnabled != 1)
      {
        v7 = 0;
LABEL_24:

        goto LABEL_25;
      }

      oslog = TRLogHandle();
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v6;
        _os_log_impl(&dword_26F2A2000, oslog, OS_LOG_TYPE_DEFAULT, "[TRDeviceSetupPeripheral] Authentication failed: %@", &buf, 0xCu);
      }

      v7 = 0;
    }

    else
    {
      v7 = 0;
      if (!v28 || !v6)
      {
        goto LABEL_24;
      }

      if (_TRLogEnabled == 1)
      {
        v8 = TRLogHandle();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_26F2A2000, v8, OS_LOG_TYPE_DEFAULT, "[TRDeviceSetupPeripheral] Authentication completed.", &buf, 2u);
        }
      }

      oslog = [v6 mutableCopy];
      [oslog setObject:*(a1 + 32) forKey:@"password"];
      *&buf = 0;
      *(&buf + 1) = &buf;
      v35 = 0x2020000000;
      v36 = 0;
      v9 = +[TRUserNotificationManager sharedInstance];
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __114__TRDeviceSetupPeripheral__legacyAuthenticateWithUserAgent_deviceGUID_accountID_password_attemptCount_completion___block_invoke_164;
      v33[3] = &unk_279DCF808;
      v33[4] = &buf;
      [v9 requestPermissionForDiagnosticSubmissionWithCompletion:v33];

      v10 = [MEMORY[0x277CBEAF8] preferredLanguages];
      if ([v10 count])
      {
        v11 = [MEMORY[0x277CBEAF8] preferredLanguages];
        v25 = [v11 objectAtIndex:0];
      }

      else
      {
        v25 = 0;
      }

      v12 = [MEMORY[0x277CBEAF8] currentLocale];
      v24 = [v12 objectForKey:*MEMORY[0x277CBE690]];

      v31 = 0;
      v32 = 0;
      TRGetCurrentWiFiNetwork(&v32, &v31);
      v22 = v32;
      v23 = v31;
      v13 = [[TRDeviceSetupLegacySetupActionAuthInfo alloc] initWithHeaders:v28 body:oslog];
      v14 = [TRDeviceSetupLegacySetupAction alloc];
      v15 = *(*(&buf + 1) + 24);
      v16 = +[TRAccountsManager sharedInstance];
      v17 = [v16 homeSharingAppleID];
      v18 = +[TRAccountsManager sharedInstance];
      v19 = [v18 homeSharingGroupID];
      LOBYTE(v21) = 0;
      v7 = [(TRDeviceSetupLegacySetupAction *)v14 initWithAuthInfo:v13 networkSSID:v22 networkPassword:v23 diagnosticsEnabled:v15 language:v25 countryCode:v24 homeSharingAppleID:v17 homeSharingGroupID:v19 rememberPassword:v21];

      _Block_object_dispose(&buf, 8);
    }

    goto LABEL_24;
  }

  v7 = 0;
  v6 = 0;
LABEL_25:
  (*(*(a1 + 40) + 16))();

  v20 = *MEMORY[0x277D85DE8];
}

- (TRDeviceSetupPeripheralDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end