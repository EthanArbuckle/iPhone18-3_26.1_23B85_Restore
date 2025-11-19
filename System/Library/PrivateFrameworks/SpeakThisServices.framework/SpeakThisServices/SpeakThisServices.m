@interface SpeakThisServices
+ (id)sharedInstance;
- (SpeakThisServices)init;
- (id)_client;
- (id)_clientIdentifier;
- (id)_descriptionForErrorCode:(int64_t)a3;
- (id)_descriptionForMessageIdentifier:(unint64_t)a3;
- (id)userInterfaceClient:(id)a3 processMessageFromServer:(id)a4 withIdentifier:(unint64_t)a5 error:(id *)a6;
- (void)_checkSpringBoardStarted;
- (void)_sendMessage:(id)a3 withIdentifier:(unint64_t)a4 errorHandler:(id)a5 completionHandler:(id)a6;
- (void)connectionWithServiceWasInterruptedForUserInterfaceClient:(id)a3;
- (void)showSpeechController:(id)a3;
- (void)speakThisWithOptions:(int64_t)a3 errorHandler:(id)a4;
- (void)speakThisWithOptions:(int64_t)a3 forAppWithBundleID:(id)a4 errorHandler:(id)a5;
- (void)speakThisWithOptions:(int64_t)a3 forAppWithBundleID:(id)a4 rootElementAccessibilityIdentifier:(id)a5 errorHandler:(id)a6;
- (void)speakThisWithOptions:(int64_t)a3 forSceneID:(id)a4 errorHandler:(id)a5;
- (void)speakThisWithOptions:(int64_t)a3 useAppAtPoint:(CGPoint)a4 errorHandler:(id)a5;
- (void)updateSpeakingRateTo:(int64_t)a3 errorHandler:(id)a4;
- (void)userInterfaceClient:(id)a3 processMessageFromServerAsynchronously:(id)a4 withIdentifier:(unint64_t)a5 completion:(id)a6;
@end

@implementation SpeakThisServices

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[SpeakThisServices sharedInstance];
  }

  v3 = sharedInstance_SharedInstance;

  return v3;
}

uint64_t __35__SpeakThisServices_sharedInstance__block_invoke()
{
  sharedInstance_SharedInstance = objc_alloc_init(SpeakThisServices);

  return MEMORY[0x2821F96F8]();
}

- (SpeakThisServices)init
{
  v14.receiver = self;
  v14.super_class = SpeakThisServices;
  v2 = [(SpeakThisServices *)&v14 init];
  if (v2)
  {
    v3 = objc_opt_new();
    errorHandlerCallbacks = v2->_errorHandlerCallbacks;
    v2->_errorHandlerCallbacks = v3;

    if (AXProcessIsBackboard())
    {
      out_token = 0;
      v5 = dispatch_get_global_queue(0, 0);
      v8 = MEMORY[0x277D85DD0];
      v9 = 3221225472;
      v10 = __25__SpeakThisServices_init__block_invoke;
      v11 = &unk_279CD88C0;
      v6 = v2;
      v12 = v6;
      notify_register_dispatch("com.apple.springboard.finishedstartup", &out_token, v5, &v8);

      [(SpeakThisServices *)v6 _checkSpringBoardStarted:v8];
    }

    else
    {
      [(SpeakThisServices *)v2 setSystemAppReady:1];
    }
  }

  return v2;
}

void __25__SpeakThisServices_init__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _checkSpringBoardStarted];
  if ([*(a1 + 32) systemAppReady] && objc_msgSend(*(a1 + 32), "triedToShowSpeechControllerBeforeSBReady"))
  {
    v2 = *(a1 + 32);
    v3 = [v2 errorHandlerFromPriorShowControllerAttempt];
    [v2 showSpeechController:v3];
  }
}

- (void)_checkSpringBoardStarted
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = _checkSpringBoardStarted_token;
  if (_checkSpringBoardStarted_token != -1 || (notify_register_check("com.apple.springboard.finishedstartup", &_checkSpringBoardStarted_token), v3 = _checkSpringBoardStarted_token, _checkSpringBoardStarted_token != -1))
  {
    state64 = 0;
    notify_get_state(v3, &state64);
    buffer = 0u;
    memset(v8, 0, sizeof(v8));
    if (proc_pidinfo(state64, 13, 0, &buffer, 64) == 64)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithCString:v8 encoding:4];
      -[SpeakThisServices setSystemAppReady:](self, "setSystemAppReady:", [v4 isEqualToString:@"SpringBoard"]);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)speakThisWithOptions:(int64_t)a3 errorHandler:(id)a4
{
  v12[1] = *MEMORY[0x277D85DE8];
  v11 = @"STSMessageKeyOptions";
  v6 = MEMORY[0x277CCABB0];
  v7 = a4;
  v8 = [v6 numberWithInteger:a3];
  v12[0] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  [(SpeakThisServices *)self _sendMessage:v9 withIdentifier:1 errorHandler:v7];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)speakThisWithOptions:(int64_t)a3 useAppAtPoint:(CGPoint)a4 errorHandler:(id)a5
{
  y = a4.y;
  x = a4.x;
  v17[3] = *MEMORY[0x277D85DE8];
  v16[0] = @"STSMessageKeyOptions";
  v9 = MEMORY[0x277CCABB0];
  v10 = a5;
  v11 = [v9 numberWithInteger:a3];
  v17[0] = v11;
  v16[1] = @"STSMessageKeyAppPointX";
  v12 = [MEMORY[0x277CCABB0] numberWithDouble:x];
  v17[1] = v12;
  v16[2] = @"STSMessageKeyAppPointY";
  v13 = [MEMORY[0x277CCABB0] numberWithDouble:y];
  v17[2] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:3];
  [(SpeakThisServices *)self _sendMessage:v14 withIdentifier:1 errorHandler:v10];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)speakThisWithOptions:(int64_t)a3 forAppWithBundleID:(id)a4 errorHandler:(id)a5
{
  v15[2] = *MEMORY[0x277D85DE8];
  v14[0] = @"STSMessageKeyOptions";
  v8 = MEMORY[0x277CCABB0];
  v9 = a5;
  v10 = a4;
  v11 = [v8 numberWithInteger:a3];
  v14[1] = @"STSMessageKeyBundleID";
  v15[0] = v11;
  v15[1] = v10;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];

  [(SpeakThisServices *)self _sendMessage:v12 withIdentifier:1 errorHandler:v9];
  v13 = *MEMORY[0x277D85DE8];
}

- (void)speakThisWithOptions:(int64_t)a3 forSceneID:(id)a4 errorHandler:(id)a5
{
  v15[2] = *MEMORY[0x277D85DE8];
  v14[0] = @"STSMessageKeyOptions";
  v8 = MEMORY[0x277CCABB0];
  v9 = a5;
  v10 = a4;
  v11 = [v8 numberWithInteger:a3];
  v14[1] = @"STSMessageKeySceneID";
  v15[0] = v11;
  v15[1] = v10;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];

  [(SpeakThisServices *)self _sendMessage:v12 withIdentifier:1 errorHandler:v9];
  v13 = *MEMORY[0x277D85DE8];
}

- (void)speakThisWithOptions:(int64_t)a3 forAppWithBundleID:(id)a4 rootElementAccessibilityIdentifier:(id)a5 errorHandler:(id)a6
{
  v18[3] = *MEMORY[0x277D85DE8];
  v17[0] = @"STSMessageKeyOptions";
  v10 = MEMORY[0x277CCABB0];
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = [v10 numberWithInteger:a3];
  v18[0] = v14;
  v18[1] = v13;
  v17[1] = @"STSMessageKeyBundleID";
  v17[2] = @"STSMessageKeyRootElementAccessibilityIdentifier";
  v18[2] = v12;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:3];

  [(SpeakThisServices *)self _sendMessage:v15 withIdentifier:1 errorHandler:v11];
  v16 = *MEMORY[0x277D85DE8];
}

- (void)showSpeechController:(id)a3
{
  v4 = a3;
  if ([(SpeakThisServices *)self systemAppReady])
  {
    [(SpeakThisServices *)self _sendMessageWithIdentifier:10 errorHandler:v4];
  }

  else
  {
    [(SpeakThisServices *)self setTriedToShowSpeechControllerBeforeSBReady:1];
    [(SpeakThisServices *)self setErrorHandlerFromPriorShowControllerAttempt:v4];
  }
}

- (void)updateSpeakingRateTo:(int64_t)a3 errorHandler:(id)a4
{
  v12[1] = *MEMORY[0x277D85DE8];
  v11 = @"STSMessageKeySpeakingRate";
  v6 = MEMORY[0x277CCABB0];
  v7 = a4;
  v8 = [v6 numberWithInteger:a3];
  v12[0] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  [(SpeakThisServices *)self _sendMessage:v9 withIdentifier:13 errorHandler:v7];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)connectionWithServiceWasInterruptedForUserInterfaceClient:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = AXLogSpeakScreen();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v10 = v4;
    _os_log_impl(&dword_26B2C7000, v5, OS_LOG_TYPE_DEFAULT, "Connection with service was interrupted for %@.", buf, 0xCu);
  }

  v6 = [MEMORY[0x277CE6948] mainAccessQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __79__SpeakThisServices_connectionWithServiceWasInterruptedForUserInterfaceClient___block_invoke;
  v8[3] = &unk_279CD8908;
  v8[4] = self;
  [v6 performAsynchronousWritingBlock:v8];

  v7 = *MEMORY[0x277D85DE8];
}

void __79__SpeakThisServices_connectionWithServiceWasInterruptedForUserInterfaceClient___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 8) setDelegate:0];
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  *(v2 + 8) = 0;

  if (_AXSSpeakThisEnabled())
  {
    v4 = [MEMORY[0x277CE7E20] sharedInstance];
    v5 = [v4 showSpeechController];

    if (v5)
    {
      v6 = *(a1 + 32);

      [v6 showSpeechController:&__block_literal_global_326];
    }
  }
}

void __79__SpeakThisServices_connectionWithServiceWasInterruptedForUserInterfaceClient___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = AXLogSpeakScreen();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __79__SpeakThisServices_connectionWithServiceWasInterruptedForUserInterfaceClient___block_invoke_2_cold_1(v2, v3);
    }
  }
}

- (id)userInterfaceClient:(id)a3 processMessageFromServer:(id)a4 withIdentifier:(unint64_t)a5 error:(id *)a6
{
  v8 = a3;
  v9 = [(SpeakThisServices *)self _client];

  if (v9 == v8)
  {
    v10 = AXLogSpeakScreen();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [SpeakThisServices userInterfaceClient:a5 processMessageFromServer:v10 withIdentifier:? error:?];
    }
  }

  return 0;
}

- (id)_clientIdentifier
{
  v2 = [MEMORY[0x277CCAC38] processInfo];
  v3 = [v2 processIdentifier];

  v4 = MEMORY[0x277CCACA8];
  v5 = [MEMORY[0x277CCABB0] numberWithInt:v3];
  v6 = [v4 stringWithFormat:@"SpeakThisClientIdentifier-%@", v5];

  return v6;
}

- (id)_client
{
  client = self->_client;
  if (!client)
  {
    v4 = [(SpeakThisServices *)self _clientIdentifier];
    v5 = [objc_alloc(MEMORY[0x277CE7748]) initWithIdentifier:v4 serviceBundleName:@"SpeakThis"];
    v6 = self->_client;
    self->_client = v5;

    [(AXUIClient *)self->_client setDelegate:self];
    client = self->_client;
  }

  return client;
}

- (void)userInterfaceClient:(id)a3 processMessageFromServerAsynchronously:(id)a4 withIdentifier:(unint64_t)a5 completion:(id)a6
{
  v24 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = [v8 objectForKeyedSubscript:@"STSUUID"];
  v10 = AXLogSpeakScreen();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v23 = v8;
    _os_log_impl(&dword_26B2C7000, v10, OS_LOG_TYPE_INFO, "Received reply: %@", buf, 0xCu);
  }

  if (v9)
  {
    v11 = [(NSMutableDictionary *)self->_errorHandlerCallbacks objectForKeyedSubscript:v9];
    if (v11)
    {
      v12 = [v8 objectForKeyedSubscript:@"STSMessageReplyKeyErrorCode"];
      v13 = v12;
      if (v12)
      {
        v14 = [v12 integerValue];
        v15 = MEMORY[0x277CCA9B8];
        v16 = [(SpeakThisServices *)self _descriptionForMessageIdentifier:a5];
        v17 = [(SpeakThisServices *)self _descriptionForErrorCode:v14];
        v18 = [v15 ax_errorWithDomain:@"STSErrorDomain" code:v14 description:{@"Could not perform %@ action: %@", v16, v17}];
      }

      else
      {
        v18 = 0;
      }

      v19 = AXLogSpeakScreen();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v23 = v18;
        _os_log_impl(&dword_26B2C7000, v19, OS_LOG_TYPE_INFO, "Posted error handler: %@", buf, 0xCu);
      }

      (v11)[2](v11, v18);
      errorHandlerCallbacks = self->_errorHandlerCallbacks;
      self->_errorHandlerCallbacks = 0;
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)_sendMessage:(id)a3 withIdentifier:(unint64_t)a4 errorHandler:(id)a5 completionHandler:(id)a6
{
  v31 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  if (v11)
  {
    v13 = [MEMORY[0x277CCAD78] UUID];
    v14 = [v13 UUIDString];

    v15 = [v10 mutableCopy];
    [v15 setObject:v14 forKeyedSubscript:@"STSUUID"];
    v16 = MEMORY[0x26D674B50](v11);
    [(NSMutableDictionary *)self->_errorHandlerCallbacks setObject:v16 forKeyedSubscript:v14];

    v10 = v15;
  }

  v17 = AXLogSpeakScreen();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v28 = v10;
    v29 = 2048;
    v30 = a4;
    _os_log_impl(&dword_26B2C7000, v17, OS_LOG_TYPE_INFO, "Sending message: %@, STSMessageIdentifier: %lu", buf, 0x16u);
  }

  v18 = [(SpeakThisServices *)self _client];
  v19 = [MEMORY[0x277CE6948] mainAccessQueue];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __80__SpeakThisServices__sendMessage_withIdentifier_errorHandler_completionHandler___block_invoke;
  v23[3] = &unk_279CD8930;
  v23[4] = self;
  v24 = v11;
  v25 = v12;
  v26 = a4;
  v20 = v12;
  v21 = v11;
  [v18 sendAsynchronousMessage:v10 withIdentifier:a4 targetAccessQueue:v19 completion:v23];

  v22 = *MEMORY[0x277D85DE8];
}

void __80__SpeakThisServices__sendMessage_withIdentifier_errorHandler_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  v5 = a3;
  if (*(a1 + 56) == 8)
  {
    v6 = [v14 objectForKeyedSubscript:@"STSMessageReplyKeyErrorCode"];
    v7 = v6;
    if (v6 && *(a1 + 40))
    {
      v8 = [v6 integerValue];
      v9 = MEMORY[0x277CCA9B8];
      v10 = [*(a1 + 32) _descriptionForMessageIdentifier:*(a1 + 56)];
      v11 = [*(a1 + 32) _descriptionForErrorCode:v8];
      v12 = [v9 ax_errorWithDomain:@"STSErrorDomain" code:v8 description:{@"Could not perform %@ action: %@", v10, v11}];

      (*(*(a1 + 40) + 16))();
    }
  }

  v13 = *(a1 + 48);
  if (v13)
  {
    (*(v13 + 16))(v13, v14);
  }
}

- (id)_descriptionForMessageIdentifier:(unint64_t)a3
{
  if (a3 - 1 > 8)
  {
    return 0;
  }

  else
  {
    return off_279CD8950[a3 - 1];
  }
}

- (id)_descriptionForErrorCode:(int64_t)a3
{
  if ((a3 - 1) > 7)
  {
    return 0;
  }

  else
  {
    return off_279CD8998[a3 - 1];
  }
}

void __79__SpeakThisServices_connectionWithServiceWasInterruptedForUserInterfaceClient___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_26B2C7000, a2, OS_LOG_TYPE_ERROR, "Error notifying SpeakThis of setting change: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)userInterfaceClient:(uint64_t)a1 processMessageFromServer:(NSObject *)a2 withIdentifier:error:.cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1];
  v5 = 138412290;
  v6 = v3;
  _os_log_fault_impl(&dword_26B2C7000, a2, OS_LOG_TYPE_FAULT, "Did not recognize UI message coming from SpeakThis UI server: %@", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end