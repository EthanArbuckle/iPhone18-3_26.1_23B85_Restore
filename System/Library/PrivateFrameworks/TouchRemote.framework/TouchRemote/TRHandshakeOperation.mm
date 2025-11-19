@interface TRHandshakeOperation
- (void)_handleResponse:(id)a3;
- (void)execute;
@end

@implementation TRHandshakeOperation

- (void)execute
{
  v13 = *MEMORY[0x277D85DE8];
  if ([(TRHandshakeOperation *)self isCancelled])
  {
    v8 = [objc_opt_class() userCancelledError];
    [(TROperation *)self finishWithError:v8];
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
        v12 = "[TRHandshakeOperation execute]";
        _os_log_impl(&dword_26F2A2000, v4, OS_LOG_TYPE_DEFAULT, "%s Send Handshake Request", buf, 0xCu);
      }
    }

    v5 = objc_alloc_init(TRHandshakeRequest);
    [(TRHandshakeRequest *)v5 setProtocolVersion:[(TRHandshakeOperation *)self protocolVersion]];
    objc_initWeak(buf, self);
    v6 = [(TROperation *)self session];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __31__TRHandshakeOperation_execute__block_invoke;
    v9[3] = &unk_279DCECD0;
    objc_copyWeak(&v10, buf);
    [v6 sendRequest:v5 withResponseHandler:v9];

    objc_destroyWeak(&v10);
    objc_destroyWeak(buf);

    v7 = *MEMORY[0x277D85DE8];
  }
}

void __31__TRHandshakeOperation_execute__block_invoke(uint64_t a1, void *a2, void *a3)
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
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (_TRLogEnabled == 1)
  {
    v5 = TRLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v14 = "[TRHandshakeOperation _handleResponse:]";
      v15 = 2112;
      v16 = v4;
      _os_log_impl(&dword_26F2A2000, v5, OS_LOG_TYPE_DEFAULT, "%s Handle Handshake Response: %@", buf, 0x16u);
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v4;
    v7 = [v6 protocolVersion];
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:{v7, @"TRHandshakeOperationProtocolVersionKey"}];
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