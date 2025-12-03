@interface TRNetworkOperation
- (void)_handleResponse:(id)response;
- (void)_sendRequestWithSSID:(id)d password:(id)password;
- (void)execute;
@end

@implementation TRNetworkOperation

- (void)execute
{
  v16 = *MEMORY[0x277D85DE8];
  if ([(TRNetworkOperation *)self isCancelled])
  {
    userCancelledError = [objc_opt_class() userCancelledError];
    [(TROperation *)self finishWithError:?];
    v3 = *MEMORY[0x277D85DE8];
  }

  else
  {
    if (_TRLogEnabled == 1)
    {
      v4 = TRLogHandle();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v15 = "[TRNetworkOperation execute]";
        _os_log_impl(&dword_26F2A2000, v4, OS_LOG_TYPE_DEFAULT, "%s Send Network Request", buf, 0xCu);
      }
    }

    buf[0] = 0;
    v12 = 0;
    v13 = 0;
    Config = TRCanPerformSetupGetConfig(buf, &v13, &v12);
    v6 = v13;
    v7 = v12;
    if (Config)
    {
      [(TRNetworkOperation *)self _sendRequestWithSSID:v6 password:v7];
    }

    else
    {
      if (buf[0])
      {
        v8 = -11001;
      }

      else
      {
        v8 = -11000;
      }

      v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TRNearbyDeviceErrorDomain" code:v8 userInfo:0];
      [(TROperation *)self finishWithError:v9];
    }

    v10 = *MEMORY[0x277D85DE8];
  }
}

- (void)_sendRequestWithSSID:(id)d password:(id)password
{
  dCopy = d;
  passwordCopy = password;
  if ([(TRNetworkOperation *)self isCancelled])
  {
    userCancelledError = [objc_opt_class() userCancelledError];
    [(TROperation *)self finishWithError:userCancelledError];
  }

  else
  {
    sendingWiFiInfoHandler = [(TRNetworkOperation *)self sendingWiFiInfoHandler];

    if (sendingWiFiInfoHandler)
    {
      sendingWiFiInfoHandler2 = [(TRNetworkOperation *)self sendingWiFiInfoHandler];
      (sendingWiFiInfoHandler2)[2](sendingWiFiInfoHandler2, dCopy);
    }

    userCancelledError = objc_alloc_init(TRSetupNetworkRequest);
    [(TRSetupNetworkRequest *)userCancelledError setNetworkSSID:dCopy];
    [(TRSetupNetworkRequest *)userCancelledError setNetworkPassword:passwordCopy];
    objc_initWeak(&location, self);
    session = [(TROperation *)self session];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __52__TRNetworkOperation__sendRequestWithSSID_password___block_invoke;
    v12[3] = &unk_279DCECD0;
    objc_copyWeak(&v13, &location);
    [session sendRequest:userCancelledError withResponseHandler:v12];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

void __52__TRNetworkOperation__sendRequestWithSSID_password___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained isCancelled])
  {
    v7 = [objc_opt_class() userCancelledError];
    [WeakRetained finishWithError:v7];
  }

  else if (v5)
  {
    [WeakRetained _handleResponse:v5];
  }

  else
  {
    [WeakRetained finishWithError:v8];
  }
}

- (void)_handleResponse:(id)response
{
  v17 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  if (_TRLogEnabled == 1)
  {
    v5 = TRLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v14 = "[TRNetworkOperation _handleResponse:]";
      v15 = 2112;
      v16 = responseCopy;
      _os_log_impl(&dword_26F2A2000, v5, OS_LOG_TYPE_DEFAULT, "%s Handle Network Response: %@", buf, 0x16u);
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = MEMORY[0x277CCABB0];
    v7 = responseCopy;
    v8 = [v6 numberWithBool:{objc_msgSend(v7, "hasNetwork", @"TRNetworkOperationHasNetworkKey"}];
    v12 = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v12 forKeys:&v11 count:1];

    [(TROperation *)self finishWithResult:v9];
  }

  else
  {
    v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TRNearbyDeviceErrorDomain" code:-10000 userInfo:0];
    [(TROperation *)self finishWithError:v9];
  }

  v10 = *MEMORY[0x277D85DE8];
}

@end