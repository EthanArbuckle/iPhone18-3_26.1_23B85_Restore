@interface TRSetupConfigurationOperation
- (void)_handleResponse:(id)a3;
- (void)execute;
@end

@implementation TRSetupConfigurationOperation

- (void)execute
{
  v17 = *MEMORY[0x277D85DE8];
  if ([(TRSetupConfigurationOperation *)self isCancelled])
  {
    v10 = [objc_opt_class() userCancelledError];
    [(TROperation *)self finishWithError:v10];
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
        v14 = "[TRSetupConfigurationOperation execute]";
        _os_log_impl(&dword_26F2A2000, v4, OS_LOG_TYPE_DEFAULT, "%s Send Configuration Request", buf, 0xCu);
      }
    }

    v5 = MGCopyAnswer();
    if (_TRLogEnabled == 1)
    {
      v6 = TRLogHandle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v14 = "[TRSetupConfigurationOperation execute]";
        v15 = 2112;
        v16 = v5;
        _os_log_impl(&dword_26F2A2000, v6, OS_LOG_TYPE_DEFAULT, "%s Using device name (%@)", buf, 0x16u);
      }
    }

    v7 = objc_alloc_init(TRSetupConfigurationRequest);
    [(TRSetupConfigurationRequest *)v7 setDeviceName:v5];
    objc_initWeak(buf, self);
    v8 = [(TROperation *)self session];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __40__TRSetupConfigurationOperation_execute__block_invoke;
    v11[3] = &unk_279DCECD0;
    objc_copyWeak(&v12, buf);
    [v8 sendRequest:v7 withResponseHandler:v11];

    objc_destroyWeak(&v12);
    objc_destroyWeak(buf);

    v9 = *MEMORY[0x277D85DE8];
  }
}

void __40__TRSetupConfigurationOperation_execute__block_invoke(uint64_t a1, void *a2, void *a3)
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

- (void)_handleResponse:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (_TRLogEnabled == 1)
  {
    v5 = TRLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v16 = "[TRSetupConfigurationOperation _handleResponse:]";
      v17 = 2112;
      v18 = v4;
      _os_log_impl(&dword_26F2A2000, v5, OS_LOG_TYPE_DEFAULT, "%s Handle Configuration Response: %@", buf, 0x16u);
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = MEMORY[0x277CCABB0];
    v7 = v4;
    v8 = [v6 numberWithBool:{objc_msgSend(v7, "needsNetwork", @"TRSetupConfigurationOperationNeedsNetworkKey"}];
    v14[0] = v8;
    v13[1] = @"TRSetupConfigurationOperationUnauthenticatedServicesKey";
    v9 = [v7 unauthenticatedAccountServices];
    v14[1] = v9;
    v13[2] = @"TRSetupConfigurationOperationUseAIDAKey";
    v10 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v7, "useAIDA")}];
    v14[2] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:3];

    [(TROperation *)self finishWithResult:v11];
  }

  else
  {
    v11 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TRNearbyDeviceErrorDomain" code:-10000 userInfo:0];
    [(TROperation *)self finishWithError:v11];
  }

  v12 = *MEMORY[0x277D85DE8];
}

@end