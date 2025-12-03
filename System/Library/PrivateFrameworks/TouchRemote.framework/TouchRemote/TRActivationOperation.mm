@interface TRActivationOperation
- (void)_handleResponse:(id)response;
- (void)execute;
@end

@implementation TRActivationOperation

- (void)execute
{
  v13 = *MEMORY[0x277D85DE8];
  if ([(TRActivationOperation *)self isCancelled])
  {
    userCancelledError = [objc_opt_class() userCancelledError];
    [(TROperation *)self finishWithError:userCancelledError];
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
        v12 = "[TRActivationOperation execute]";
        _os_log_impl(&dword_26F2A2000, v4, OS_LOG_TYPE_DEFAULT, "%s Send Activation Request", buf, 0xCu);
      }
    }

    v5 = objc_alloc_init(TRSetupActivationRequest);
    objc_initWeak(buf, self);
    session = [(TROperation *)self session];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __32__TRActivationOperation_execute__block_invoke;
    v9[3] = &unk_279DCECD0;
    objc_copyWeak(&v10, buf);
    [session sendRequest:v5 withResponseHandler:v9];

    objc_destroyWeak(&v10);
    objc_destroyWeak(buf);

    v7 = *MEMORY[0x277D85DE8];
  }
}

void __32__TRActivationOperation_execute__block_invoke(uint64_t a1, void *a2, void *a3)
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
  v20 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  if (_TRLogEnabled == 1)
  {
    v5 = TRLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v17 = "[TRActivationOperation _handleResponse:]";
      v18 = 2112;
      v19 = responseCopy;
      _os_log_impl(&dword_26F2A2000, v5, OS_LOG_TYPE_DEFAULT, "%s Handle Activation Response: %@", buf, 0x16u);
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = responseCopy;
    v7 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v6, "activated", @"TRActivationOperationIsActivatedKey"}];
    v15 = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    v9 = [v8 mutableCopy];

    error = [v6 error];

    if (error)
    {
      error2 = [v6 error];
      [v9 setObject:error2 forKeyedSubscript:@"TRActivationOperationErrorKey"];
    }

    v12 = [v9 copy];
    [(TROperation *)self finishWithResult:v12];
  }

  else
  {
    v6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TRNearbyDeviceErrorDomain" code:-10000 userInfo:0];
    [(TROperation *)self finishWithError:v6];
  }

  v13 = *MEMORY[0x277D85DE8];
}

@end