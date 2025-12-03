@interface RMSDAAPLoginManager
- (BOOL)_isFairplayRequiredForServerInfo:(id)info;
- (RMSDAAPLoginManager)initWithRequestManager:(id)manager;
- (void)_continueFairPlayHandshakeWithData:(id)data completionHandler:(id)handler;
- (void)_requestControlInterfaceWithCompletionHandler:(id)handler;
- (void)_requestFairPlayHandshake:(id)handshake;
- (void)_requestLoginWithCompletionHandler:(id)handler;
- (void)_requestServerInfoWithCompletionHandler:(id)handler;
- (void)loginWithCompletionHandler:(id)handler;
@end

@implementation RMSDAAPLoginManager

- (RMSDAAPLoginManager)initWithRequestManager:(id)manager
{
  managerCopy = manager;
  v10.receiver = self;
  v10.super_class = RMSDAAPLoginManager;
  v6 = [(RMSDAAPLoginManager *)&v10 init];
  if (v6)
  {
    v7 = objc_opt_new();
    fairPlaySession = v6->_fairPlaySession;
    v6->_fairPlaySession = v7;

    objc_storeStrong(&v6->_requestManager, manager);
    [(RMSDAAPRequestManager *)v6->_requestManager setFairPlaySession:v6->_fairPlaySession];
  }

  return v6;
}

- (void)loginWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __50__RMSDAAPLoginManager_loginWithCompletionHandler___block_invoke;
  v6[3] = &unk_279B08C78;
  v5 = handlerCopy;
  v7 = v5;
  objc_copyWeak(&v8, &location);
  [(RMSDAAPLoginManager *)self _requestServerInfoWithCompletionHandler:v6];
  objc_destroyWeak(&v8);

  objc_destroyWeak(&location);
}

void __50__RMSDAAPLoginManager_loginWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2 == 1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __50__RMSDAAPLoginManager_loginWithCompletionHandler___block_invoke_1;
    v12[3] = &unk_279B08CA0;
    v13 = *(a1 + 32);
    objc_copyWeak(&v14, (a1 + 40));
    [WeakRetained _requestLoginWithCompletionHandler:v12];

    objc_destroyWeak(&v14);
  }

  else
  {
    v4 = RMSLogger();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __50__RMSDAAPLoginManager_loginWithCompletionHandler___block_invoke_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }

    (*(*(a1 + 32) + 16))();
  }
}

void __50__RMSDAAPLoginManager_loginWithCompletionHandler___block_invoke_1(uint64_t a1, uint64_t a2, int a3)
{
  if (a2 == 1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v6 = WeakRetained;
    if (WeakRetained)
    {
      [*(WeakRetained + 1) setSessionIdentifier:a3];
      if (v6[24] == 1)
      {
        v18[0] = MEMORY[0x277D85DD0];
        v18[1] = 3221225472;
        v18[2] = __50__RMSDAAPLoginManager_loginWithCompletionHandler___block_invoke_2;
        v18[3] = &unk_279B08C78;
        v19 = *(a1 + 32);
        objc_copyWeak(&v20, (a1 + 40));
        [v6 _requestFairPlayHandshake:v18];
        v7 = &v19;
        objc_destroyWeak(&v20);
      }

      else
      {
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = __50__RMSDAAPLoginManager_loginWithCompletionHandler___block_invoke_2;
        v16[3] = &unk_279B08C50;
        v7 = v17;
        v17[0] = *(a1 + 32);
        v17[1] = 1;
        [v6 _requestControlInterfaceWithCompletionHandler:v16];
      }
    }
  }

  else
  {
    v8 = RMSLogger();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __50__RMSDAAPLoginManager_loginWithCompletionHandler___block_invoke_1_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
    }

    (*(*(a1 + 32) + 16))();
  }
}

void __50__RMSDAAPLoginManager_loginWithCompletionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2 == 1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __50__RMSDAAPLoginManager_loginWithCompletionHandler___block_invoke_3;
    v12[3] = &unk_279B08C50;
    v13 = *(a1 + 32);
    v14 = 1;
    [WeakRetained _requestControlInterfaceWithCompletionHandler:v12];
  }

  else
  {
    v4 = RMSLogger();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __50__RMSDAAPLoginManager_loginWithCompletionHandler___block_invoke_2_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }

    (*(*(a1 + 32) + 16))();
  }
}

- (void)_requestServerInfoWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  requestManager = self->_requestManager;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __63__RMSDAAPLoginManager__requestServerInfoWithCompletionHandler___block_invoke;
  v8[3] = &unk_279B08CC8;
  v8[4] = self;
  v9 = handlerCopy;
  v6 = handlerCopy;
  v7 = [(RMSDAAPRequestManager *)requestManager requestWithPath:@"server-info" method:@"GET" postData:0 queryArgs:0 completionHandler:v8];
}

uint64_t __63__RMSDAAPLoginManager__requestServerInfoWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2 == 1)
  {
    v3 = [RMSDAAPParser objectWithData:?];
    *(*(a1 + 32) + 24) = [*(a1 + 32) _isFairplayRequiredForServerInfo:v3];
  }

  v4 = *(*(a1 + 40) + 16);

  return v4();
}

- (void)_requestControlInterfaceWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  requestManager = self->_requestManager;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __69__RMSDAAPLoginManager__requestControlInterfaceWithCompletionHandler___block_invoke;
  v8[3] = &unk_279B08CF0;
  v9 = handlerCopy;
  v6 = handlerCopy;
  v7 = [(RMSDAAPRequestManager *)requestManager requestWithPath:@"ctrl-int" method:@"POST" postData:0 queryArgs:0 completionHandler:v8];
}

void __69__RMSDAAPLoginManager__requestControlInterfaceWithCompletionHandler___block_invoke(uint64_t a1)
{
  v11 = [RMSDAAPParser objectWithData:?];
  v2 = [v11 objectForKey:@"items"];
  v3 = [v2 firstObject];

  v4 = [v3 objectForKeyedSubscript:@"dacp.supportsSpeakerSelection"];
  v5 = [v4 BOOLValue];

  v6 = [v3 objectForKeyedSubscript:@"dacp.supportsVolume"];
  v7 = [v6 BOOLValue];

  v8 = [v3 objectForKeyedSubscript:@"supportsDirectionalControl"];
  v9 = [v8 BOOLValue];

  v10 = objc_opt_new();
  [v10 setSupportsSpeakerSelection:v5];
  [v10 setSupportsVolumeControl:v7];
  [v10 setSupportsDirectionalControl:v9];
  (*(*(a1 + 32) + 16))();
}

- (void)_requestLoginWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (self->_isFairPlayRequired)
  {
    v5 = &unk_287486D28;
  }

  else
  {
    v5 = 0;
  }

  requestManager = self->_requestManager;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __58__RMSDAAPLoginManager__requestLoginWithCompletionHandler___block_invoke;
  v9[3] = &unk_279B08CF0;
  v10 = handlerCopy;
  v7 = handlerCopy;
  v8 = [(RMSDAAPRequestManager *)requestManager requestWithPath:@"login" method:@"GET" postData:0 queryArgs:v5 completionHandler:v9];
}

void __58__RMSDAAPLoginManager__requestLoginWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [RMSDAAPParser objectWithData:?];
  if (a2 != 1)
  {
    v5 = RMSLogger();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __58__RMSDAAPLoginManager__requestLoginWithCompletionHandler___block_invoke_cold_1(v4, v5);
    }
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32), a2, [v4 intValue]);
}

- (void)_requestFairPlayHandshake:(id)handshake
{
  if (self->_isFairPlayRequired)
  {
    fairPlaySession = self->_fairPlaySession;
    handshakeCopy = handshake;
    handshakeCopy2 = [(RMSFairPlaySession *)fairPlaySession handshakeData];
    [RMSDAAPLoginManager _continueFairPlayHandshakeWithData:"_continueFairPlayHandshakeWithData:completionHandler:" completionHandler:?];
  }

  else
  {
    v6 = *(handshake + 2);
    handshakeCopy2 = handshake;
    v6();
  }
}

- (void)_continueFairPlayHandshakeWithData:(id)data completionHandler:(id)handler
{
  dataCopy = data;
  handlerCopy = handler;
  requestManager = self->_requestManager;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __76__RMSDAAPLoginManager__continueFairPlayHandshakeWithData_completionHandler___block_invoke;
  v12[3] = &unk_279B08D18;
  v13 = dataCopy;
  v14 = handlerCopy;
  v12[4] = self;
  v9 = dataCopy;
  v10 = handlerCopy;
  v11 = [(RMSDAAPRequestManager *)requestManager requestWithPath:@"fp-setup" method:@"POST" postData:v9 queryArgs:0 completionHandler:v12];
}

void __76__RMSDAAPLoginManager__continueFairPlayHandshakeWithData_completionHandler___block_invoke(uint64_t a1)
{
  v3 = [*(*(a1 + 32) + 16) handshakeIterationWithData:?];
  if ([*(*(a1 + 32) + 16) isHandshakeComplete])
  {
    v2 = *(*(a1 + 48) + 16);
  }

  else
  {
    if (*(a1 + 40))
    {
      [*(a1 + 32) _continueFairPlayHandshakeWithData:v3 completionHandler:*(a1 + 48)];
      goto LABEL_7;
    }

    v2 = *(*(a1 + 48) + 16);
  }

  v2();
LABEL_7:
}

- (BOOL)_isFairplayRequiredForServerInfo:(id)info
{
  infoCopy = info;
  v4 = [infoCopy objectForKeyedSubscript:@"com.apple.itunes.supportedextensions"];
  unsignedLongLongValue = [v4 unsignedLongLongValue];

  if ((unsignedLongLongValue & 2) != 0)
  {
    v10 = 1;
  }

  else
  {
    v6 = [infoCopy objectForKeyedSubscript:@"com.apple.itunes.req-fplay"];
    bOOLValue = [v6 BOOLValue];

    v8 = [infoCopy objectForKeyedSubscript:@"com.apple.itunes.supports-fprap"];
    bOOLValue2 = [v8 BOOLValue];

    v10 = bOOLValue & bOOLValue2;
  }

  return v10;
}

void __58__RMSDAAPLoginManager__requestLoginWithCompletionHandler___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_261E98000, a2, OS_LOG_TYPE_ERROR, "Login error, additional info from response body: %@", &v2, 0xCu);
}

@end